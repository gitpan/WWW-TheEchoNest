package WWW::TheEchoNest::Sandbox;

use Moose;

{
    $WWW::TheEchoNest::Sandbox::VERSION = '1.0';
}

extends 'WWW::TheEchoNest';

no Moose;
__PACKAGE__->meta->make_immutable;

1;

__END__

=pod

=head1 NAME

WWW::TheEchoNest::Sandbox

=head1 VERSION

version 0.1

=head1 NAME

WWW::TheEchoNest::Sandbox

=head1 REQUIRES

L<Moose> 

=head1 METHODS

=head1 AUTHOR

Aaron Johnson <aaronjjohnson@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Aaron Johnson.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
