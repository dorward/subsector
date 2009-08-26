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



=head1 COPYRIGHT & LICENSE

Copyright 2008-2009 David Dorward

This program is free software; you can redistribute it and/or
modify it under the terms of the Artistic License version 2.0.

You are encouraged to contact the author if you wish to discuss
alternative licensing terms.

=back