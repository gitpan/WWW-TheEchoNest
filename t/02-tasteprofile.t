#!/usr/bin/perl

use strict;
use warnings;

use Test::More qw/no_plan/;
use Data::Dumper;

use lib '..';

BEGIN {

    use_ok('WWW::TheEchoNest::TasteProfile');

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


SKIP: {
    skip "api_key not set", 1 if !$api_key;
 # begin TasteProfile tests

    my $catalog = WWW::TheEchoNest::TasteProfile->new( api_key => $api_key );
    
    my $cat_name = "WWWTheEchoNestTest_$$";
    
    # warn "$cat_name\n";
    
    # Test create
    
    ok( $catalog->create( type => 'artist' , name => $cat_name ), "can call catalog create - $cat_name" );
    
    # Verify a CA was returned, all catalogs start with CA
    
    my $ca_id = $catalog->get( 'id' );
    
    ok( $ca_id =~ /^CA/ , 'created catalog has valid id' );
    
    sleep 1;
    
    # Get the list of available 
    
    ok( $catalog->list() , 'can call catalog list - after create');
    
    ok( $catalog->last_result() =~ m/$cat_name/ , "catalog with name of $cat_name exists" );
    
    # FIX ME
    $catalog->ban( id => $ca_id ,
                  item => 'ARK3D5J1187B9BA0B8',
                 );
    
    sleep 1;
    
    ok( $catalog->get_status_code(1) == 0 , 'ban on non-exist item was allowed' );
    
    # we want to unban so things later *might* work
    
    ok( $catalog->ban( id => $ca_id ,
                  item => $catalog_ban_artist_id,
                  ban => 'false'
                 ) , "unban send success" );
    
    sleep 1;
    
    my $json_data_song = q~[
        {
            "item":
                {
                    "item_id": "WWWTheEchoNestTest123",
                    "song_name" : "Harmonice Mundi II",
                    "artist_name" : "Six Organs Of Admittance",
                    "play_count" : 4
                }
        },
        {
            "item":
                {
                    "item_id": "WWWTheEchoNestTest234",
                    "song_name" : "Spine",
                    "artist_name" : "Gem Club",
                    "favorite" : true
                }
        },
        {
            "item":
                {
                    "item_id": "WWWTheEchoNestTest456",
                    "artist_id": "ARK3D5J1187B9BA0B8",
                    "play_count" : 10
                }
        },
    ]
    ~;
    
    my $json_data_artist = q~[
        {
            "item":
                {
                    "item_id": "itsgucci",
                    "artist_name" : "Gucci Mane"
                }
        },
        {
            "item":
                {
                    "item_id": "royk",
                    "artist_name" : "Royksopp",
                    "favorite" : true
                }
        },
        {
            "item":
                {
                    "item_id": "kfw",
                    "artist_name" : "Keith Fullerton Whitman"
                }
        },
        {
            "item":
                {
                    "item_id": "cale",
                    "artist_name" : "John Cale"
                }
        }
    ]
    ~;
    
    my $bad_json = q~[
        {
            "item":
                {
                    "item_id": "itsgucci",
                    "artist_name" : "Gucci Mane"
                }
        }
        {
            "item":
                {
                    "item_id": "royk",
                    "artist_name" : "Royksopp"
                    "favorite" : true
                }
        },
        {
            "item":
                {
                    "item_id": "kfw",
                    "artist_name" : "Keith Fullerton Whitman"
                }
        },
        {
            "item":
                {
                    "item_id": "cale",
                    "artist_name" : "John Cale"
                }
        }
    ]
    ~;
    
    $catalog->update( id => $ca_id ,
                     data => $json_data_artist
                    );
    
    ok( $catalog->get_status_code(1) == 0 , 'catalog update with artist data' );
    
    $catalog->update( id => $ca_id ,
                     data => $bad_json
                    );
    
    ok( $catalog->last_error() eq 'invalid json passed into tasteprofile/update' , 'catalog update rejects bad json');
    
    # to test key value we need add some key values to an item
    
    # action code. one of ("delete","update","play","skip". Default is "update")
    
    my $keyvalue_json = qq~[
     {
     "action": "update",
     "item":
        {
             "item_id": "kfw",
    
             "item_keyvalues": {
                 "class" : ["Primary", "Gold", "Deep Track"],
                 "sound" : ["female", "disco", "pop"],
                 "mood" :  "upbeat",
                 "rating" :  10,
                 "tempo" : ["fast", "fast"]
             }
         }
      }
    ]~;
    
    my $catalog_kv_json = qq~[
       {
           "action":"update",
           "catalog_keyvalues": {
                "type": "user",
                "gender": "male",
                "yob": "1959",
                "zipcode": "03101"
           }
       }
    ]~;
    
    ok( $catalog->update( id => $ca_id ,
                         data => $keyvalue_json
                        ) , "item update with item_keyvalues");
    
    ok( $catalog->update( id => $ca_id ,
                         data => $catalog_kv_json
                        ) , "catalog update of keyvalues" );
    
    my $ticket = $catalog->get( 'ticket' );
    
    ok( $ticket =~ /\w/ , "got ticket for catalog update" );
    
    sleep 3;
    
    # check to see how our ticket is doing
    
    ok( $catalog->status( ticket => $ticket ) , "call for ticket status" );
    
    my $pc = $catalog->get('percent_complete');
    
    ok( $pc =~ /\d/ , "catalog ticket $ticket is $pc\% completed");
    
    if ($catalog->last_error) {
        warn $catalog->last_error();
    }
    # exit;
    sleep 10;
    
    ok( $catalog->keyvalues( id=> $ca_id ) , "can make call to keyvalues");
    
    #  "zipcode": "03101"
    
    ok( $catalog->get( 'keyvalues.zipcode' ) eq '03101' , "has the correct key and value" );
    
    if ($catalog->last_error) {
        warn $catalog->last_result();
    }
    
    # now lets read the catalog
    
    ok( $catalog->read( id => $ca_id ) , 'can read catalog' );
    
    # warn $catalog->last_result();
    
    ok( $catalog->read( id => $ca_id ,
                       bucket => [ 'biographies' , 'artist_location' , 'terms' ]
                      ) , 'can read catalog with buckets' );
    
    ok( $catalog->get('catalog.items[0].artist_id') eq $catalog_ban_artist_id , 'artist is present in read' );
    
    # ok( $obj->ban(),       'can call $obj->ban() without params' );
    
    # test profile
    
    ok( $catalog->profile( id => $ca_id ) , "call to catalog/profile with id" );
    
    ok( $catalog->get('catalog.id') eq $ca_id , "correct catalog id returned" );
    
    ok( $catalog->profile( name => $cat_name ) , "call to catalog/profile with name" );
    
    ok( $catalog->get('catalog.name') eq $cat_name , "correct catalog name returned" );
    
    # test feed
    
    ok( $catalog->feed(id => $ca_id) , 'call to catalog/feed' );
    
    # this isn't very percise because values may be different over time
    ok( $catalog->get('feed[0].name') =~ /\w/ , "has expected value in response" );
    
    # warn $catalog->last_result();
    
    sleep 5;
    
    ok( $catalog->play( id => $ca_id , item => $catalog_artist_id ) , "call to catalog/play with artist_id no plays param" );
    
    ok( $catalog->skip( id => $ca_id , item => $catalog_artist_id) , "call to catalog/skip with artist_id no skips param" );
    
    ok( $catalog->play( id => $ca_id , item => $catalog_artist_id  , plays => 10 ) , "call to catalog/play with artist_id no plays param" );
    
    ok( $catalog->skip( id => $ca_id , item => $catalog_artist_id , skips => 3 ) , "call to catalog/skip with artist_id no skips param" );
    
    ok( $catalog->favorite( id => $ca_id , item => $catalog_artist_id ) , "call to catalog/favorite with artist_id" );
    
    ok( $catalog->rate( id => $ca_id ,
                       item => $catalog_artist_id,
                       rating => 6
                       ) , "call to catalog/rate with artist_id" );
    
    # now we need to read back the item we have been modifying to verify it has changed
    
    $catalog->read( id => $ca_id , item_id => $catalog_item_id );
    
    # warn $catalog->last_result();
    
    ok($catalog->get( 'catalog.items[0].play_count' ) >= 11 , "correct play count" );
    
    ok($catalog->get( 'catalog.items[0].skip_count' ) >= 4 , "correct skip count" );
    
    # old versions of JSON could convert "true" in 1 or possibly remove it, known bad version 2.53 in windows
    
    ok($catalog->get( 'catalog.items[0].favorite' ) eq 'true' , "$catalog_artist_id is a favorite" );
    
    ok($catalog->get( 'catalog.items[0].rating' ) == 6 , "$catalog_artist_id rating is 6" );
    
    # test similar - no indepth tests yet
    ok($catalog->similar( id => $ca_id ) , "call to catalog/similar" );
    
    # warn $catalog->last_result();
    
    ok( $catalog->delete(id => $ca_id)  , 'can call catalog/delete' );
    
    sleep 1;
    
    ok( $catalog->list() , 'can call catalog/list - after delete');
    
    ok( $catalog->last_result() !~ m/$cat_name/ , "catalog with name of $cat_name does not exists" );

}

1;