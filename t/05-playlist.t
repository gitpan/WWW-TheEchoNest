#!/usr/bin/perl

use strict;
use warnings;

use Test::More qw/no_plan/;
use Data::Dumper;

use lib '..';

BEGIN {

    use_ok('WWW::TheEchoNest::Playlist');
    # addded artist so we can get genres if needed
    use_ok('WWW::TheEchoNest::Artist');

    }

# Create some variables with which to test the methods
# Note: give these some reasonable values.  Then try unreasonable values :)
my $message      = 'Test Message';
my %extra        = ( '' => '', );
my $call_type    = '';
my $content      = '';
my @return       = ( '', );
my $attribute    = '';
my $request      = '';
my $identifier   = '';
my $item         = '';
my $uri_part     = '';
my $extra        = '';
my $id_to_check  = '';
my $seed_hashref = '';
my $attributes   = '';
my $api_key = $ENV{EN_API_KEY};
my $catalog_ban_artist_id    = 'ARK3D5J1187B9BA0B8';
my $catalog_artist_id = 'ARUI8651187B9ACF52';
my $catalog_item_id = 'cale';
my $artist       = 'Weezer';
my $song_id      = "SOHTZUF12A8C13582B";

SKIP: {
    skip "api_key not set", 1 if !$api_key;
    
    my $result; 
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
    
    
    ok( $playlist->get( 'songs[0].id' ) =~ /^SO/ , "playlist/basic for $artist returns a valid SO" );
    
    
    $playlist->basic(
      artist => $artist,
      results => 2,
      type => 'artist-radio',
      bucket => [ 'id:7digital-US' , 'tracks' ],
      limit => 'true',
        
    );
    
    # warn $playlist->last_result();
    
    # warn $playlist->get( 'songs[0].artist_foreign_ids[0].catalog' );
                                                                     
    ok( $playlist->get( 'songs[0].artist_foreign_ids[0].catalog' ) =~ /7digital/ , "playlist/basic for 7-digital returns a 7-digital item" );
    
    ok( $playlist->get( 'songs[0].artist_foreign_ids[0].foreign_id' ) =~ /artist/ , "playlist/basic for 7-digital returns an artist foreign_id" );
    
    # future test could in ALL genres, but would require a pause between each to avoid
    # going over the CPM rate for a new account
    
    $playlist->basic(
        genre   => "dance pop",
        results => 20,
        type    => 'genre-radio'
    );
    
    ok( $playlist->get( 'songs[0].id' ) =~ /^SO/ , "playlist/basic for genere-radio dance pop" );
    
    # SOHTZUF12A8C13582B&format=json&results=20&type=song-radio
    
    $playlist->basic(
        song_id   => $song_id ,
        results => 20,
        type    => 'song-radio'
    );
    
    ok( $playlist->get( 'songs[0].id' ) =~ /^SO/ , "playlist/basic for song-radio " );
    
    # test static
    
    $playlist->static(
                     artist  => $artist,
                     results => 20,
                     type    => 'artist-radio'
                     );
    
    
    ok( $playlist->get( 'songs[0].id' ) =~ /^SO/ , "playlist/static for $artist returns a valid SO" );
    
    
    $playlist->static(
      artist => $artist,
      results => 2,
      type => 'artist-radio',
      bucket => [ 'id:7digital-US' , 'tracks' ],
      limit => 'true',
        
    );
                                                                     
    ok( $playlist->get( 'songs[0].artist_foreign_ids[0].catalog' ) =~ /7digital/ , "playlist/static for 7-digital returns a 7-digital item" );
    
    ok( $playlist->get( 'songs[0].artist_foreign_ids[0].foreign_id' ) =~ /artist/ , "playlist/static for 7-digital returns an artist foreign_id" );
    
    $playlist->static(
        genre   => "dance pop",
        results => 20,
        type    => 'genre-radio'
    );
    
    ok( $playlist->get( 'songs[0].id' ) =~ /^SO/ , "playlist/static for genere-radio dance pop" );
    
    $playlist->static(
        song_id   => $song_id ,
        results => 20,
        type    => 'song-radio'
    );
    
    ok( $playlist->get( 'songs[0].id' ) =~ /^SO/ , "playlist/static for song-radio " );
    
    # test dynamic
    
    # $playlist->debug(1);
    
    $playlist->dynamic_create(
                     artist  => $artist,
                     results => 20,
                     type    => 'artist-radio'
                     );
    
    # warn $playlist->last_result();
    
    # warn $playlist->last_error();
    
    my $session = $playlist->get( 'session_id' );
    
    ok( $session =~ /\w{32}/ , "playlist/dynamic/create for artist-raido '$artist' returned valid session ($session)" );
    
    sleep 10;
    # only want to see one time for now
    $playlist->dynamic_next( 
        session_id => $session
    );
    
    ok( $playlist->get( 'songs[0].title' ) =~ /\w/ , "playlist/dynamic_next returned song" );
    
    $playlist->dynamic_next( 
        session_id => $session,
        lookahead => 2,
        results => 2
    );
    
    ok( $playlist->get( 'songs[1].title' ) =~ /\w/ , "playlist/dynamic/next returned at least 2 songs with look ahead ($session)" );
    
    my ($playlist_artist,$playlist_song) = $playlist->get( 'songs[0].artist_id' , 'songs[0].id' );
    
    ok( $playlist_artist =~ /^AR/ , "valid artist_id returned" );
    ok( $playlist_song =~ /^SO/ , "valid song_id returned" );
    
    $playlist->dynamic_feedback(
        favorite_artist => $playlist_artist,
        session_id => $session
    );
    
    ok( $playlist->get( 'status.message' ) eq 'Success' , "playlist/dynamic/feedback favorite_song ($session , $playlist_artist )" );
    
    $playlist->dynamic_info(
        session_id => $session
    );
    
    ok( $playlist->get( 'id' ) eq $session , "playlist/dynamic/info matches $session" );
    
    $playlist->dynamic_steer(
        session_id => $session,
        more_like_this => $playlist_song
    );
    
    ok( $playlist->get( 'status.message' ) eq 'Success' , "playlist/dynamic/steer for $session with more_like_this $playlist_song" );
    
    $playlist->dynamic_delete(
        session_id => $session
    );
    
    ok( $playlist->get( 'status.message' ) eq 'Success' , "delete of $session was successful" );

} # end skip

1;