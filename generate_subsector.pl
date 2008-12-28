#!/usr/bin/perl
use strict;
use warnings;
use XML::LibXML;
use Carp;

my $svgns = "http://www.w3.org/2000/svg";
my $xlinkns = "http://www.w3.org/1999/xlink";

# This is rough, ready and experimental!

# I'm learning SVG as I go, and feeling my way through this on the way
# Expect proper OO et al LATER.

# TODO
# * Moose
# * Add <desc> elements for each hex

my $doc = XML::LibXML->createDocument();
$doc->setStandalone(1);

my %root_attributes = (
                    width =>   "744.09448", #"230mm",
                    height => "1052.3622",  #"190mm",
                    viewBox => "0 0 3000 5255",
# For sectors                    viewBox => "0 0 12000 " . (5255 * 4),
                    );
my $root = $doc->createElementNS($svgns, 'svg');
for my $key (keys %root_attributes) {
    my $value = $root_attributes{$key};
    $root->setAttribute($key, $value);
}
$doc->setDocumentElement($root);

my $style_text = qq(
                .hex {
                        fill: white;
                        stroke: #000;
                        stroke-width: 5px;
                        stroke-linejoin: miter
                }
                .coords {
                        fill: #666;
                        stroke: none;
		}
		text {
			fill: #000;
			stroke: none;
                        font-family: helvetica, arial;
                        font-size: 85px;
                        text-anchor: middle;
                }
		.systemName {
			stroke: #fff;
			stroke-width: 1px;
			font-weight: bold;
			font-family: deja vu sans, verdana;
		}
		.planet {
			fill: #000;
			stroke: none;
		}
		.travel_zone,
		.ring {
			fill: none;
			stroke: #000;
			stroke-width: 3px;
		}
		.travel_zone.red {
			fill: #ddd;
		}
		.base {
			fill: #000;
			stroke: #fff;
			stroke-width: 3px;
		}
		.TAS circle {
			fill: #fff;
			stroke: none;
		}
		.TAS polygon {
			fill: #000;
			stroke: #fff;
			stroke-width: 3px;
		}
);
my $style = $doc->createElementNS($svgns, 'style');
$style->setAttribute('type', 'text/css');
my $style_text_node = $doc->createTextNode($style_text);
$style->appendChild($style_text_node);
$root->appendChild($style);

my @systems = ();
for (1..10) {
    $systems[$_] = ();
}

# For subsectors
for my $col (1..10) {
	for my $row (1..8) {

## For sectors
#for my $col (1..40) {
#	for my $row (1..32) {

		my $hex = createHex($col,$row);
		$root->appendChild($hex);
	}
}


print $doc->toString();

sub createHex {
    my ($row, $col) = @_;
    my $id = sprintf("hex-%02d%02d", $col, $row);
    my $hex = $doc->createElementNS($svgns, 'svg');
    $hex->setAttribute('id', $id);
my $x_shift = 350 * ($col - 1);
my $y_shift = 500 * ($row - 1);
       unless ($col % 2) {
            $y_shift = $y_shift + 250;
        }
  
    $hex->setAttribute('x', $x_shift);
    $hex->setAttribute('y', $y_shift);
	my $hex_line = createHexLine();

	$hex->appendChild($hex_line);

	#$hex->appendChild(createTravelZone( (($row + $col) % 2) ? 'amber' : 'red'));

	my $hex_label = createHexLabel($col, $row);
	$hex->appendChild($hex_label);


	$hex->appendChild(createPlanet());
	$hex->appendChild(createGasGiant());
	$hex->appendChild(createScoutBase());
	$hex->appendChild(createNavalBase());
	$hex->appendChild(createImperialConsulateBase());
	$hex->appendChild(createTASBase());
	$hex->appendChild(createStarport('B'));
	$hex->appendChild(createSystemName('Sol'));

    return $hex;
}

sub createHexLine {
    my $hex_line;
    $hex_line = $doc->createElementNS($svgns, 'polygon');
    $hex_line->setAttribute('class', 'hex');
    $hex_line->setAttribute('points', '150,0 350,0 500,250 350,500 150,500 0,250');
    return $hex_line;
}

sub createHexLabel {
	my $col = shift;
	my $row = shift;
	my %attributes = (x => 250, y => 90, class => 'coords');
        my $text = createSvgElement('text', %attributes);
	my $tNode = $doc->createTextNode(sprintf("%02d%02d", $col, $row));	
	$text->appendChild($tNode);
	return $text;
}

sub createPlanet {
	return createSvgElement('circle', cx => 250, cy => 250, r => 25, class => 'planet'); 
}

sub createTravelZone {
	my $zone_type = shift;
	return createSvgElement('circle', cx => 250, cy => 250, r => 150, class => "travel_zone $zone_type"); 
}


sub createSvgElement {
	my $name = shift;
	my %attributes = @_;
	my $element = $doc->createElementNS($svgns, $name);
	for my $key (keys %attributes) {
		$element->setAttribute($key, $attributes{$key});
	}	
	return $element;
}


sub createScoutBase {
    my $hex_line;
    $hex_line = $doc->createElementNS($svgns, 'polygon');
    $hex_line->setAttribute('class', 'scout base');
    $hex_line->setAttribute('points', '080,215 130,215 105,175');
    return $hex_line;
}

sub createGasGiant {
	my $container = createSvgElement('svg', x => 300, y => 100, height => 70, width => 70);
	my $e = createSvgElement('ellipse', cx => 35, cy => 35, rx => 35, ry => 12, class => 'ring',
					transform => "rotate(-22 35 35)") ;
	my $p = createSvgElement('circle', cx => 35, cy => 35, r => 20, class => 'planet');
	$container->appendChild($e);
	$container->appendChild($p);
	return $container;
}

sub createNavalBase {
	my $container = createSvgElement('svg', x => 145, y => 100, height => 50, width => 50);
	my $s = createSvgElement('polygon', class => 'naval base', points => '25,0 31.09,18.07 50,18.07 34.87,29.41 40.34,47.48 25,36.76 9.66,47.48 15.13,29.41 0,18.07 18.91,18.07');
	$container->appendChild($s);
	return $container;
}

sub createImperialConsulateBase {
	my $s = createSvgElement('rect', class => 'imperialConsulate base', x => 100, y => 300, height => 50, width => 50);
	return $s;
}


sub createTASBase {
	my $container = createSvgElement('svg', x => 75, y => 230, height => 50, width => 50, class => "TAS");
	my $c = createSvgElement('circle', cx => 25, cy => 25, r => 12);
	my @outer = pointsOnCircle(9,22,25,25);
	my @inner = pointsOnCircle(9,14,25,25, 0.5);
	my $points = '';
	my $l = scalar @outer - 1 ;
	for my $pos ( 0..$l) {
		my $opoint = $outer[$pos]->{x} . ',' . $outer[$pos]->{y} . ' ';
		my $ipoint = $inner[$pos]->{x} . ',' . $inner[$pos]->{y} . ' ';
		$points .= $opoint . $ipoint;
	}
	my $p = createSvgElement('polygon', points => $points, style => 'fill: black;');
	$container->appendChild($p);
	$container->appendChild($c);
	return $container;
}

sub createStarport {
	my $class = shift;
        my $container = createSvgElement('svg', x => 0, y => 110, height => 250, width => 500, class => "starport");
	my %attributes = (x => 250, y => 85, class => 'starport');
        my $text = createSvgElement('text', %attributes);
	my $tNode = $doc->createTextNode($class);	
	$text->appendChild($tNode);
	$container->appendChild($text);
	return $container;
}


sub createSystemName {
	my $name = shift;
        my $container = createSvgElement('svg', x => 0, y => 360, height => 250, width => 500, class => "starport");
	my %attributes = (x => 250, y => 85, class => 'systemName');
        my $text = createSvgElement('text', %attributes);
	my $tNode = $doc->createTextNode($name);	
	$text->appendChild($tNode);
	$container->appendChild($text);
	return $container;
}

use Math::Trig;
sub pointsOnCircle {
	my $points = shift;
	my $r = shift;
	my $cx = shift;
	my $cy = shift;
	my $offset = shift || 0;
	
	my @coords;

	my $angle = 2 * pi / $points;
	for (1..$points) {
		my $t = ($_ + $offset) * $angle;
		my $coord = {
			x => $cy + cos($t) * $r,
			y => $cx + sin($t) * $r
		};
		push @coords, $coord;
	}
	return @coords;
}
