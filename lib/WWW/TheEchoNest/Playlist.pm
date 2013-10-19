
package WWW::TheEchoNest::Playlist;

# ABSTRACT: Wrapper for The Echo Nest API of music intelligence playlist calls

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

WWW::TheEchoNest::Playlist - Wrapper for The Echo Nest API of music intelligence playlist calls

=head1 VERSION

version 0.3

=head1 SYNOPSIS

    my $api_key = 'YOUR API KEY';
    
    my $artist = 'Weezer';
    
    my $playlist = WWW::TheEchoNest::Playlist->new(
                                              api_key => $api_key
                                             );
    
    my $artist_obj = WWW::TheEchoNest::Artist->new(
        api_key => $api_key
    );
    
    my @genres = $artist_obj->list_genres();
    
    $playlist->basic(
                     artist  => $artist,
                     results => 20,
                     type    => 'artist-radio'
                     );
    
    my $first_song_id = $playlist->get( 'songs[0].id' );
    
    $playlist->basic(
      artist => $artist,
      results => 2,
      type => 'artist-radio',
      bucket => [ 'id:7digital-US' , 'tracks' ],
      limit => 'true'  
    );

    # if you are using dynamic playlists you need to keep track of the session
    
    $playlist->dynamic_create(
                 artist  => $artist,
                 results => 20,
                 type    => 'artist-radio'
                 );
    
    my $session_id = $playlist->get( 'session_id' );
    
    # the session_id is a 32 md5 hash
    
    $playlist->dynamic_next( 
        session_id => $session
    );
    
    my $first_song_tile = $playlist->get( 'songs[0].title' );

=head1 NAME

WWW::TheEchoNest::Playlist

=head1 METHODS

=head2 basic

 my $song_id = "SOHTZUF12A8C13582B";
 
 $playlist->basic(
        song_id   => $song_id ,
        results => 20,
        type    => 'song-radio');
        
 my $first_song_tile = $playlist->get( 'songs[0].title' );

=head2 static

 $playlist->static(
        genre   => "dance pop",
        results => 20,
        type    => 'genre-radio'
 );
 
 my $first_song_tile = $playlist->get( 'songs[0].title' );

=head2 dynamic_create

Create a dynamic playlist, which is similar to playlists with less complexity

    $playlist->dynamic_create(
                 artist  => $artist,
                 results => 20,
                 type    => 'artist-radio'
                 );
    
    # it is important that you keep track of the session id as this is how you will interact with it.
    
    my $session_id = $playlist->get( 'session_id' );

special case, returns the actual session_id if request was successful

=head2 dynamic_delete

Delete a previously created dynamic playlist, you need to pass in the session_id

 $playlist->dynamic_delete( session_id => $session );

=head2 dynamic_feedback

 $playlist->dynamic_feedback();

=head2 dynamic_info

 $playlist->dynamic_info();

=head2 dynamic_next

 $playlist->dynamic_next( session_id => $session );

=head2 dynamic_restart

Allows you to reset the playlist with a new seed artist

 $playlist->dynamic_restart(
    session_id => $session_id,
    type => 'artist-radio',
    artist => 'Queen'
    );

=head2 dynamic_steer

Allows you influence the playlist by asking for "more like this" etc.

 my $playlist_song = 'VALID SONG ID';

 $playlist->dynamic_steer(
        session_id => $session_id,
        more_like_this => $playlist_song
 );

=head1 AUTHOR

Aaron Johnson <aaronjjohnson@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Aaron Johnson.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
