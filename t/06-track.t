#!/usr/bin/perl

use strict;
use warnings;

use Test::More qw/no_plan/;
use Data::Dumper;

use lib '..';

BEGIN {

    use_ok('WWW::TheEchoNest::Track');
    # addded artist so we can get genres if needed
    # use_ok('WWW::TheEchoNest::Artist');

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

my $track = WWW::TheEchoNest::Track->new( api_key => $api_key );
# $track->debug(1);
# http://developer.echonest.com/api/v4/track/profile?api_key=FILDTEOIK2HBORODV&format=json&id=TRTLKZV12E5AC92E11&bucket=audio_summary

$track->profile( id     => 'TRTLKZV12E5AC92E11',
                 bucket => 'audio_summary' );

ok( $track->get('track.audio_md5') =~ /\w{32}/ , "track/profile returned valid audio_md5" );

# no force
    
$track->upload( # url => './t/test.mp3',
                url => './t/test.mp3',
                filetype => 'mp3'
                );

ok( $track->get('track.md5') eq '0a65922f961d9401dfbcc84c30e0094b' , "our test file still exists and has the correct md5" );

$track->upload( # url => './t/test.mp3',
                # this is a special case for track/uplad where we add a paramter called force so we can
                # send the file even if we think it already exists
                force => 1,
                url => './t/test.mp3',
                filetype => 'mp3'
                );

ok( $track->get('track.md5') eq '0a65922f961d9401dfbcc84c30e0094b' , "force upload of track with url (file) returned correct md5" );

$track->upload( # url => './t/test.mp3',
                # this is a special case for track/uplad where we add a paramter called force so we can
                # send the file even if we think it already exists
                force => 1,
                url => 'http://www.gina.net/test.mp3',
                filetype => 'mp3'
                );

ok( $track->get('track.md5') eq '0a65922f961d9401dfbcc84c30e0094b' , "force upload of track with url (http) returned correct md5" );

$track->upload( 
                # this is a special case for track/uplad where we add a paramter called force so we can
                # send the file even if we think it already exists
                track => './t/test.mp3',
                filetype => 'mp3'
                );

ok( $track->get('track.md5') eq '0a65922f961d9401dfbcc84c30e0094b' , "upload of track with 'track' param file returned correct md5" );

my $track_id = 'TRTLKZV12E5AC92E11';
 
$track->profile(
    id     =>  $track_id,
    bucket => [ 'audio_summary' ]
);

# print Dumper($track->get( 'track.audio_summary' ));

# print $track->last_result;

1;