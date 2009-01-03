package Games::Traveller::Sector::World;
use strict;
use warnings;
use Moose;
use Moose::Util::TypeConstraints;
  
subtype 'UWPo'
    => as 'Object'
        => where { $_->isa('Games::Traveller::UWP') };

coerce 'UWPo'
    => from 'Str'
        => via {
                my $uwp = Games::Traveller::UWP->new();
                $uwp->readUwp($_);
                return $uwp;
                };

has "UWP" => (
    is => 'rw',
    isa => 'UWPo',
    coerce => 1,
);

1;
