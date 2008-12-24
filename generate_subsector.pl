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

my $doc = XML::LibXML->createDocument();
$doc->setStandalone(1);

my %root_attributes = (
                    width =>   "744.09448", #"230mm",
                    height => "1052.3622",  #"190mm",
                    viewBox => "0 0 3000 5255",
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
                        font-family: helvetica, arial;
                        font-size: 85px;
                        stroke: none;
                        text-anchor: middle;
                }
		.planet {
			fill: #000;
			stroke: none;
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

for my $col (1..10) {
	for my $row (1..8) {
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
	my $hex_label = createHexLabel($col, $row);
	$hex->appendChild($hex_label);

	$hex->appendChild(createPlanet());

    return $hex;
}

sub createHexLine {
    my $hex_line;
    $hex_line = $doc->createElementNS($svgns, 'polygon');
    $hex_line->setAttribute('id', 'hex');
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
	return createSvgElement('circle', cx => 250, cy => 250, r => 25, class => "travel_zone $zone_type"); 
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

__END__
  
my $svg = SVG->new(
                   width => "230mm",
                   height => "190mm",
                   viewBox => "0 0 3000 5255",
                   style => $outline
                );

# Create initial hex

my @base_x = qw(150 350 500 350 150 0);
my @base_y = qw(0 0 250 500 500 250);

my @systems = ();
for (1..10) {
    $systems[$_] = ();
}

for my $row (1 .. 10) {
    for my $col (1 .. 8) {
        my $x_shift = 350 * ($col - 1);
        my $y_shift = 500 * ($row - 1);
        unless ($col % 2) {
            $y_shift = $y_shift + 250;
        }
        
        
        my @x = map { $_ + $x_shift } @base_x;
        my @y = map { $_ + $y_shift } @base_y;
    
        my $points = $svg->get_path(x => \@x, y => \@y, -type => "polygon");
        my $system = $svg->polygon(%$points, style => $outline);
        $systems[$row][$col] = $system;
        
        my $text = $svg->text(x => $x_shift + 250, y => $y_shift + 90, %$system_number)->cdata(sprintf("%02d%02d", $col, $row));
        
    }
}


print $svg->xmlify("-stand-alone" => 1);
