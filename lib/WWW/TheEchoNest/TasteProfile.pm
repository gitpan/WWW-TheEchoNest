
package WWW::TheEchoNest::TasteProfile;

use Moose;

{
    $WWW::TheEchoNest::TasteProfile::VERSION = '1.0';
}

extends 'WWW::TheEchoNest';

sub create {
    my ($self,%extra) = @_;

    return $self->send_post_request('catalog/create',\%extra);
}

sub update {
    my ($self,%extra) = @_;

    return $self->send_post_request('catalog/update',\%extra);
}

sub keyvalues {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('catalog/keyvalues',\%extra);
}

sub play {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('catalog/play',\%extra);
}

sub skip {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('catalog/skip',\%extra);
}

sub favorite {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('catalog/favorite',\%extra);
}

sub ban {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('catalog/ban',\%extra);
}

sub rate {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('catalog/rate',\%extra);
}

sub status {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('catalog/status',\%extra);
}

sub profile {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('catalog/profile',\%extra);
}

sub read {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('catalog/read',\%extra);
}

sub feed {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('catalog/feed',\%extra);
}

sub delete {
    my ($self,%extra) = @_;

    return $self->send_post_request('catalog/delete',\%extra);
}

sub list {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('catalog/list',\%extra);
}

sub similar {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('catalog/similar',\%extra);
}

sub predict {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('catalog/predict',\%extra);
}

no Moose;
__PACKAGE__->meta->make_immutable;

1;

__END__

=pod

=head1 NAME

WWW::TheEchoNest::TasteProfile

=head1 VERSION

version 0.1

=head1 NAME

WWW::TheEchoNest::TasteProfile

=head1 REQUIRES

L<Moose> 

=head1 METHODS

=head2 ban

 ban();

=head2 create

 create();

=head2 delete

 delete();

=head2 favorite

 favorite();

=head2 feed

 feed();

=head2 keyvalues

 keyvalues();

=head2 list

 list();

=head2 play

 play();

=head2 predict

 predict();

=head2 profile

 profile();

=head2 rate

 rate();

=head2 read

 read();

=head2 similar

 similar();

=head2 skip

 skip();

=head2 status

 status();

=head2 update

 update();

=head1 AUTHOR

Aaron Johnson <aaronjjohnson@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Aaron Johnson.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
