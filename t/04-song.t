#!/usr/bin/perl

use strict;
use warnings;

use Test::More qw/no_plan/;
use Data::Dumper;

use lib '..';

BEGIN {

    use_ok('WWW::TheEchoNest::Song');

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

    my $result;    
    my $song = WWW::TheEchoNest::Song->new(
                                          api_key => $api_key
                                         );    
ok( $song->debug(1) , "debug level to 1" );

$song->debug(0);

ok( $song->search( title => 'Stairway to Heaven'
                                  , artist => 'Led Zeppelin'
                                # , bucket => [ 'id:7digital-US' ]
                                ) , "song/search for Stairway to Heaven - Led Zeppelin" );

ok( $song->get('songs[0].artist_id') =~ /^AR/ , "song/search artist_id is of the correct prefix" );
    
=pod

# need to move these up to a top level test 01

=cut

    my $soid = $song->get( 'songs[0].id' );
    my $arid = $song->get( 'songs[0].artist_id');
    
ok( $soid =~ /^SO/ , "song_id has correct prefix (single get)" );
ok( $arid =~ /^AR/ , "artist_id has correct prefix (single get)" );
    
    my ($sid,$aid) = $song->get( 'songs[0].id' , 'songs[0].artist_id');
    
ok( $soid =~ /^SO/ , "song_id has correct prefix (multi get scalar)" );
ok( $arid =~ /^AR/ , "artist_id has correct prefix (multi get scalar)" );    
    
    my @info = $song->get( 'songs[0].id' , 'songs[0].artist_id');

ok( $info[0] =~ /^SO/ , "song_id has correct prefix (single get array)" );
ok( $info[1] =~ /^AR/ , "artist_id has correct prefix (single get array)" );

    # exit;
ok( $song->profile( id => $soid , bucket => [ 'id:7digital-US' , 'tracks' ]) , "song/profile call" );

ok( $song->get( 'songs[0].artist_id' ) =~ /^AR/ , "using id:7digital-US got record with valid artist_id for $soid" );

ok( $song->identify( file_location => './t/test.mp3' ) , "song/identify call no meta or parameters just mp3" );

ok( $song->get( 'songs[0].artist_name' ) eq 'Aerosmith' , "song was correctly identified" );

1;