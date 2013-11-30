
package WWW::TheEchoNest::TasteProfile;

# ABSTRACT: Wrapper for The Echo Nest API of music intelligence Taste Profiles

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

WWW::TheEchoNest::TasteProfile - Wrapper for The Echo Nest API of music intelligence Taste Profiles

=head1 VERSION

version 0.4

=head1 SYNOPSIS

my $api_key = $ENV{EN_API_KEY} || 'YOUR EN API KEY';

my $catalog = WWW::TheEchoNest::TasteProfile->new( api_key => $api_key );

# don't do this in the real world! each catalog name has to be unique
# so create something to ensure you can locate them in the future

my $cat_name = "WWWTheEchoNestTest_$$" . rand(1000); 

# create an artist catalog

$catalog->create( type => 'artist' , name => $cat_name );

my $catalog_id = $catalog->get( 'id' );

=head1 DESCRIPTION

Allows for interacting with The Echo Nest Taste Profile (/catalog) calls

The catalog calls rely on json that is passed in to perform certain actions
so you should have a good JSON checker handy.  This module provides a crude
good or bad method you can use to check the JSON before sending. See the
synopsis below.

All modules use Moose so 'use strict' will be auto loaded with in your script
so beaware of how you scope your variables if you are new to Perl.

=head1 NAME

WWW::TheEchoNest::TasteProfile

=head1 METHODS

=head2 ban

Ban a particular catalog item. This can also be done through the update
method, but this method only allows for one item at a time.

 $catalog->ban( id => 'CAxxxxxxxxxxxxxxxx',
                item => 'theItemName'
                );

=head2 create

 $catalog->create();

=head2 delete

 $catalog->delete();

=head2 favorite

 $catalog->favorite();

=head2 feed

 $catalog->feed();

=head2 keyvalues

 $catalog->keyvalues();

=head2 list

 $catalog->list();

=head2 play

 $catalog->play();

=head2 predict

 $catalog->predict();

=head2 profile

 $catalog->profile( id => 'CAxxxxxxxxxxxxxxxx' );
 
 # if catalog exists
 
 my $tickets = $catalog->get( 'catalog.pending_tickets' );
 
 # the above will return an array ref that contains the list of
 # of pending tickts if any.
 
 my ($total,$resolved) = $catalog->get( 'catalog.total',
                                        'catalog.resolved'
                                        );

 print "There are $total items in 'CAxxxxxxxxxxxxxxxx' and $resolved of them have been resolved\n";

=head2 rate

Allows you to rate a particular catalog item.

 $catalog->rate(
                    id => 'CAxxxxxxxxxxxxxxxx',
                    item => 'theItemName' );
 
 # defaults to 5 you can also pass in 0 - 10
 
 $catalog->rate(    'CAxxxxxxxxxxxxxxxx',
                    item => 'theItemName',
                    rating => 9
                    );

=head2 read

 $catalog->read();

=head2 similar

 $catalog->similar();

=head2 skip

 $catalog->skip();

=head2 status

Get the status of an update that has been sent. You must have a ticket to
reference. A ticket is a md5 checksum that is returned with the update call.

 $catalog->status( ticket => 'abcdeabcdeabcdeabcdeabcdeabcdeab' );

=head2 update

Send in a block of JSON that contains a properly formatted list of items you
would like to update.

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
    
 $catalog->update(  id => 'CAxxxxxxxxxxxxxxxx',
                    data => $keyvalue_json
                  );

This method can also be used to update the catalog (not the items) with
key value pairs. The Echo Nest documentation contain more specifics on
what is allowed.

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

 $catalog->update(  id => 'CAxxxxxxxxxxxxxxxx',
                    data => $catalog_kv_json
                  );

Reminder that "catalog_keyvalues" is for the *catalog* not the individual
items.

=head1 AUTHOR

Aaron Johnson <aaronjjohnson@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Aaron Johnson.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
