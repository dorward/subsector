#!/usr/bin/perl
use strict;
use warnings;
use SVG;

# This is rough, ready and experimental!

# I'm learning SVG as I go, and feeling my way through this on the way
# Expect proper OO et al LATER.

my $outline = {
    fill => 'white',
    stroke => '#000',
    "stroke-width" => '5px',
    "stroke-linejoin" => "miter",
};

my $system_number = {
    "font-size" => "85",
    fill => "#666",
    stroke => 'none',
    "text-anchor" => "middle",
    "style" => "font-family: helvetica, arial"
};

my $svg = SVG->new(
                   width => "230mm",
                   height => "190mm",
                   viewBox => "0 0 3000 5255",
                   style => $outline
                );

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
