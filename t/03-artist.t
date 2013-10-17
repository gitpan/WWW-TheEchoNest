#!/usr/bin/perl

use strict;
use warnings;

use Test::More qw/no_plan/;
use Data::Dumper;

use lib '..';

BEGIN {

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

# test for artist calls

my $artist = WWW::TheEchoNest::Artist->new( api_key => $api_key );

$artist->list_genres();

my $genres = $artist->get( 'genres[*].name' );

ok( ref($genres) eq 'ARRAY' , "genres as an array ref (didn't ask for array) '$genres->[0]'" );

my @genres_array = $artist->list_genres();

ok( $genres_array[0] =~ /^a/ , "genres as array (asked for array) '$genres_array[0]'" );

ok( $artist->attribute_error($message), 'can call $artist->attribute_error()' );

ok( $artist->debug(1) , 'can set debug flag' );

ok( $artist->attribute_error($message), 'can call $artist->attribute_error() with debug' );

$artist->debug(0);

ok( $artist->attribute_error(),
    'can call $artist->attribute_error() without params' );

ok( $artist->biographies(), 'can all artist/biographies with no parameters' );

ok( $artist->biographies( name => 'Lady GaGa' ) , 'can call artist/biographies with parameters' );

ok( $artist->get( 'biographies[0].url', 'biographies[0].site') , 'can call get an artist result' );

my ($url,$site) = $artist->get( 'biographies[0].url',
                                 'biographies[0].site');

ok( $url =~ /http/ , 'url looks sane for biography' );

ok ( $site =~ /[a-z]/i , 'site looks sane for biography' );

ok( $artist->sanity_check_id('1234') == 1 , 'can call sanity_check' );

# FIX ME
# ok( $artist->seed_count_met('') , 'seed_count_met' );

ok( $artist->part_of_seed_limit('artist_id') == 1 , 'part_of_seed_limit with valid param works' );

ok( $artist->part_of_seed_limit('bogus') == 0 , 'part_of_seed_limit with invalid param works' );

ok( $artist->build_url_base() =~ /http/ , 'can build_url_base' );

# print $artist->check_result_code() , "\n";

ok( $artist->check_result_code() =~ /Success/ , 'can check_result_code' );

ok( $artist->blogs( name => 'Lady GaGa' , results => 1 , bogus => 1 ) , 'can call artist blogs');

ok( $artist->familiarity( name => 'Lady GaGa' ) , 'can call artist familiarity');

ok( $artist->hotttnesss( name => 'Lady GaGa' ) , 'can call artist hotttnesss' );

ok( $artist->images( name => 'Lady GaGa' ) , 'can call artist images');

ok( $artist->list_genres( name => 'Lady GaGa' , results => 1 ) , 'can call artist list_genres');

ok( $artist->list_terms( type => 'style' , results => 1 ) , 'can call artist list_terms');

ok( $artist->news( name => 'Lady GaGa' , results => 1 ) , 'can call artist news');

ok( $artist->profile( name => 'Lady GaGa' ) , 'can call artist profile');

ok( $artist->reviews( name => 'Lady GaGa' , results => 1 ) , 'can call artist reviews');

ok( $artist->search( name => 'Led Zepplin' ) , 'can call artist search');

ok( $artist->extract( text => 'Siriusmo is my favorite, but I also like hrvatski' ) , 'can call artist extract');

ok( $artist->songs( name => 'Lady GaGa' ) , 'can call artist songs');

ok( $artist->similar( name => 'Lady GaGa' ) , 'can call artist similar');

ok( $artist->suggest( name => 'Lady GaGa' ) , 'can call artist suggest');

ok( $artist->terms( name => 'Lady GaGa' ) , 'can call artist terms');

ok( $artist->top_hottt( name => 'Lady GaGa' ) , 'can call artist hottt');

ok( $artist->top_terms( name => 'Lady GaGa' ) , 'can call artist top_terms');

ok( $artist->twitter( name => 'Lady GaGa' ) , 'can call artist twitter');

ok( $artist->urls( name => 'Lady GaGa' ) , 'can call artist urls');

ok( $artist->video( name => 'Lady GaGa' , results => 1 ) , 'can call artist video');

1;