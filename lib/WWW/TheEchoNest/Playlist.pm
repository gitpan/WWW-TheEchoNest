
package WWW::TheEchoNest::Playlist;

use Moose;

{
    $WWW::TheEchoNest::Playlist::VERSION = '1.0';
}

extends 'WWW::TheEchoNest';

sub basic {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('playlist/basic',\%extra);
}

sub static {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('playlist/static',\%extra);
}

sub dynamic_create {
    my ($self,%extra) = @_;
    
    my $call = $self->request_with_minimum('playlist/dynamic/create',\%extra);
    
    if ($self->last_error() eq '') {
        return $self->get( 'session_id' );
    }
    
    return $call;
}

sub dynamic_restart {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('playlist/dynamic/restart',\%extra);
}

sub dynamic_next {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('playlist/dynamic/next',\%extra);
}

sub dynamic_feedback {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('playlist/dynamic/feedback',\%extra);
}

sub dynamic_steer {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('playlist/dynamic/steer',\%extra);
}

sub dynamic_info {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('playlist/dynamic/info',\%extra);
}

sub dynamic_delete {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('playlist/dynamic/delete',\%extra);
}    

no Moose;
__PACKAGE__->meta->make_immutable;

1;

__END__

=pod

=head1 NAME

WWW::TheEchoNest::Playlist

=head1 VERSION

version 0.1

=head1 NAME

WWW::TheEchoNest::Playlist

=head1 REQUIRES

L<Moose> 

=head1 METHODS

=head2 basic

 basic();

=head2 dynamic_create

 dynamic_create();

 special case, returns the actual session_id if request was successful

=head2 dynamic_delete

 dynamic_delete();

=head2 dynamic_feedback

 dynamic_feedback();

=head2 dynamic_info

 dynamic_info();

=head2 dynamic_next

 dynamic_next();

=head2 dynamic_restart

 dynamic_restart();

=head2 dynamic_steer

 dynamic_steer();

=head2 static

 static();

=head1 AUTHOR

Aaron Johnson <aaronjjohnson@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Aaron Johnson.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
