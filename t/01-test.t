#!/usr/bin/perl

use strict;
use warnings;

use Test::More qw/no_plan/;
use Data::Dumper;

use lib '..';

BEGIN {
    use_ok('WWW::TheEchoNest::Song');
    use_ok('WWW::TheEchoNest::Artist');
    use_ok('WWW::TheEchoNest::Track');
    use_ok('WWW::TheEchoNest::TasteProfile');
    use_ok('WWW::TheEchoNest::Sandbox');
    use_ok('WWW::TheEchoNest::Playlist');
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

# And now to test the methods/subroutines.

ok( $api_key =~ /[A-Z]/i , "valid api_key");

my $obj = WWW::TheEchoNest::Artist->new( api_key => $api_key ); 

# start some generic tests

# need to call something to get have the other data available
ok( $obj->biographies( name => 'Lady GaGa' ) , 'can call artist/biographies with parameters' );

ok( $obj->sanity_check_id('1234') == 1 , 'can call sanity_check' );

ok( $obj->get_header_item('X-Ratelimit-Limit') =~ /\d/, "call for X-Ratelimit-Limit from http header" );
    
ok(  $obj->get_header_item('Client-Date') =~ /\d{4}/, "call for Client-Date from http header" );

ok(  $obj->rate_limit() =~ /\d/ , "convenience rate_limit call" );

ok(  $obj->rate_limit_used() =~ /\d/ , "convenience rate_limit_used call" );

ok(  $obj->rate_limit_remaining() =~ /\d/ , "convenience rate_limit_remaining" );

my @grp = $obj->get_request_parameter('song/search','limit');

ok(  $grp[0] == 0, "check for existing request parameter value" );

ok(  $obj->set_request_parameter('bogus/call', [ 'bogus_butt',1 ]) , "create new request parameter and value" );

ok(  $obj->set_request_parameter('song/search', [ 'limit',1 ]) , "change value for existing request parameter value" );

@grp = $obj->get_request_parameter('song/search','limit');

ok(  $grp[0] == 1 , "verfied setting" );

ok(  Dumper($obj->get_request_parameter('playlist/dynamic/create', 'session_catalog')) , "what?" );

ok( $obj->auto_json_decode(1) , "set auto_json_decode to 1 (on)" );

ok( ref($obj->biographies( name => 'Lady GaGa' )) eq 'HASH' , "post auto_json_decode call returns perl data structure" );


__END__

ok( $obj->basic(%extra), 'can call $obj->basic()' );
ok( $obj->basic(),       'can call $obj->basic() without params' );

ok( $obj->biographies(%extra), 'can call $obj->biographies()' );
ok( $obj->biographies(),       'can call $obj->biographies() without params' );

ok( $obj->blogs(%extra), 'can call $obj->blogs()' );
ok( $obj->blogs(),       'can call $obj->blogs() without params' );

ok( $obj->build_url_base($call_type), 'can call $obj->build_url_base()' );
ok( $obj->build_url_base(), 'can call $obj->build_url_base() without params' );

ok( $obj->check_result_code(),
    'can call $obj->check_result_code() without params' );

ok( $obj->codegen_mp3(), 'can call $obj->codegen_mp3() without params' );

ok( $obj->consolidate(%extra), 'can call $obj->consolidate()' );
ok( $obj->consolidate(),       'can call $obj->consolidate() without params' );



ok( $obj->dynamic_create(%extra), 'can call $obj->dynamic_create()' );
ok( $obj->dynamic_create(), 'can call $obj->dynamic_create() without params' );

ok( $obj->dynamic_delete(%extra), 'can call $obj->dynamic_delete()' );
ok( $obj->dynamic_delete(), 'can call $obj->dynamic_delete() without params' );

ok( $obj->dynamic_feedback(%extra), 'can call $obj->dynamic_feedback()' );
ok( $obj->dynamic_feedback(),
    'can call $obj->dynamic_feedback() without params' );

ok( $obj->dynamic_info(%extra), 'can call $obj->dynamic_info()' );
ok( $obj->dynamic_info(), 'can call $obj->dynamic_info() without params' );

ok( $obj->dynamic_next(%extra), 'can call $obj->dynamic_next()' );
ok( $obj->dynamic_next(), 'can call $obj->dynamic_next() without params' );

ok( $obj->dynamic_restart(%extra), 'can call $obj->dynamic_restart()' );
ok( $obj->dynamic_restart(),
    'can call $obj->dynamic_restart() without params' );

ok( $obj->dynamic_steer(%extra), 'can call $obj->dynamic_steer()' );
ok( $obj->dynamic_steer(), 'can call $obj->dynamic_steer() without params' );

ok( $obj->extract(%extra), 'can call $obj->extract()' );
ok( $obj->extract(),       'can call $obj->extract() without params' );

ok( $obj->familiarity(%extra), 'can call $obj->familiarity()' );
ok( $obj->familiarity(),       'can call $obj->familiarity() without params' );

ok( $obj->favorite(%extra), 'can call $obj->favorite()' );
ok( $obj->favorite(),       'can call $obj->favorite() without params' );

ok( $obj->feed(%extra), 'can call $obj->feed()' );
ok( $obj->feed(),       'can call $obj->feed() without params' );

ok( $obj->format_results($content), 'can call $obj->format_results()' );
ok( $obj->format_results(), 'can call $obj->format_results() without params' );

ok( $obj->get(@return), 'can call $obj->get()' );
ok( $obj->get(),        'can call $obj->get() without params' );

ok( $obj->get_header_item($attribute), 'can call $obj->get_header_item()' );
ok( $obj->get_header_item(),
    'can call $obj->get_header_item() without params' );

ok(
    $obj->get_request_parameter( $request, $attribute ),
    'can call $obj->get_request_parameter()'
);
ok( $obj->get_request_parameter(),
    'can call $obj->get_request_parameter() without params' );

ok( $obj->hotttnesss(%extra), 'can call $obj->hotttnesss()' );
ok( $obj->hotttnesss(),       'can call $obj->hotttnesss() without params' );

ok( $obj->identify(%extra), 'can call $obj->identify()' );
ok( $obj->identify(),       'can call $obj->identify() without params' );

ok( $obj->images(%extra), 'can call $obj->images()' );
ok( $obj->images(),       'can call $obj->images() without params' );

ok( $obj->is_valid_id($identifier), 'can call $obj->is_valid_id()' );
ok( $obj->is_valid_id(), 'can call $obj->is_valid_id() without params' );

ok( $obj->keyvalues(%extra), 'can call $obj->keyvalues()' );
ok( $obj->keyvalues(),       'can call $obj->keyvalues() without params' );

ok( $obj->list(%extra), 'can call $obj->list()' );
ok( $obj->list(),       'can call $obj->list() without params' );

ok( $obj->list_genres(%extra), 'can call $obj->list_genres()' );
ok( $obj->list_genres(),       'can call $obj->list_genres() without params' );

ok( $obj->list_terms(%extra), 'can call $obj->list_terms()' );
ok( $obj->list_terms(),       'can call $obj->list_terms() without params' );

ok( $obj->news(%extra), 'can call $obj->news()' );
ok( $obj->news(),       'can call $obj->news() without params' );

ok( $obj->part_of_seed_limit($item), 'can call $obj->part_of_seed_limit()' );
ok( $obj->part_of_seed_limit(),
    'can call $obj->part_of_seed_limit() without params' );

ok( $obj->play(%extra), 'can call $obj->play()' );
ok( $obj->play(),       'can call $obj->play() without params' );

ok( $obj->predict(%extra), 'can call $obj->predict()' );
ok( $obj->predict(),       'can call $obj->predict() without params' );

ok( $obj->profile(%extra), 'can call $obj->profile()' );
ok( $obj->profile(),       'can call $obj->profile() without params' );

ok( $obj->rate(%extra), 'can call $obj->rate()' );
ok( $obj->rate(),       'can call $obj->rate() without params' );

ok( $obj->rate_limit(), 'can call $obj->rate_limit() without params' );

ok( $obj->rate_limit_remaining(),
    'can call $obj->rate_limit_remaining() without params' );

ok( $obj->rate_limit_used(),
    'can call $obj->rate_limit_used() without params' );

ok( $obj->read(%extra), 'can call $obj->read()' );
ok( $obj->read(),       'can call $obj->read() without params' );

ok(
    $obj->request_with_minimum( $uri_part, $extra ),
    'can call $obj->request_with_minimum()'
);
ok( $obj->request_with_minimum(),
    'can call $obj->request_with_minimum() without params' );

ok(
    $obj->request_with_no_minimum( $uri_part, $extra ),
    'can call $obj->request_with_no_minimum()'
);
ok( $obj->request_with_no_minimum(),
    'can call $obj->request_with_no_minimum() without params' );

ok( $obj->reviews(%extra), 'can call $obj->reviews()' );
ok( $obj->reviews(),       'can call $obj->reviews() without params' );

ok( $obj->sanity_check_id($id_to_check), 'can call $obj->sanity_check_id()' );
ok( $obj->sanity_check_id(),
    'can call $obj->sanity_check_id() without params' );

ok( $obj->search(%extra), 'can call $obj->search()' );
ok( $obj->search(),       'can call $obj->search() without params' );

ok( $obj->seed_count_met($seed_hashref), 'can call $obj->seed_count_met()' );
ok( $obj->seed_count_met(), 'can call $obj->seed_count_met() without params' );

ok( $obj->send_get_request($attributes), 'can call $obj->send_get_request()' );
ok( $obj->send_get_request(),
    'can call $obj->send_get_request() without params' );

ok( $obj->send_post_request(),
    'can call $obj->send_post_request() without params' );

ok(
    $obj->set_request_parameter( $request, $attribute ),
    'can call $obj->set_request_parameter()'
);
ok( $obj->set_request_parameter(),
    'can call $obj->set_request_parameter() without params' );

ok( $obj->similar(%extra), 'can call $obj->similar()' );
ok( $obj->similar(),       'can call $obj->similar() without params' );

ok( $obj->skip(%extra), 'can call $obj->skip()' );
ok( $obj->skip(),       'can call $obj->skip() without params' );

ok( $obj->songs(%extra), 'can call $obj->songs()' );
ok( $obj->songs(),       'can call $obj->songs() without params' );

ok( $obj->static(%extra), 'can call $obj->static()' );
ok( $obj->static(),       'can call $obj->static() without params' );

ok( $obj->status(%extra), 'can call $obj->status()' );
ok( $obj->status(),       'can call $obj->status() without params' );

ok( $obj->suggest(%extra), 'can call $obj->suggest()' );
ok( $obj->suggest(),       'can call $obj->suggest() without params' );

ok( $obj->terms(%extra), 'can call $obj->terms()' );
ok( $obj->terms(),       'can call $obj->terms() without params' );

ok( $obj->top_hottt(%extra), 'can call $obj->top_hottt()' );
ok( $obj->top_hottt(),       'can call $obj->top_hottt() without params' );

ok( $obj->top_terms(%extra), 'can call $obj->top_terms()' );
ok( $obj->top_terms(),       'can call $obj->top_terms() without params' );

ok( $obj->twitter(%extra), 'can call $obj->twitter()' );
ok( $obj->twitter(),       'can call $obj->twitter() without params' );

ok( $obj->update(%extra), 'can call $obj->update()' );
ok( $obj->update(),       'can call $obj->update() without params' );

ok( $obj->upload(%extra), 'can call $obj->upload()' );
ok( $obj->upload(),       'can call $obj->upload() without params' );

ok( $obj->urls(%extra), 'can call $obj->urls()' );
ok( $obj->urls(),       'can call $obj->urls() without params' );

ok( $obj->video(%extra), 'can call $obj->video()' );
ok( $obj->video(),       'can call $obj->video() without params' );