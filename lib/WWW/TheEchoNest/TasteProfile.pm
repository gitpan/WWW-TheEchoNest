
package WWW::TheEchoNest::TasteProfile;

# ABSTRACT: Wrapper for The Echo Nest API of music intelligence Taste Profiles

use Moose;

{
    $WWW::TheEchoNest::TasteProfile::VERSION = '1.1';
}

extends 'WWW::TheEchoNest';

sub create {
    my ($self,%extra) = @_;

    return $self->send_post_request('tasteprofile/create',\%extra);
}

sub update {
    my ($self,%extra) = @_;

    return $self->send_post_request('tasteprofile/update',\%extra);
}

sub keyvalues {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('tasteprofile/keyvalues',\%extra);
}

sub play {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('tasteprofile/play',\%extra);
}

sub skip {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('tasteprofile/skip',\%extra);
}

sub favorite {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('tasteprofile/favorite',\%extra);
}

sub ban {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('tasteprofile/ban',\%extra);
}

sub rate {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('tasteprofile/rate',\%extra);
}

sub status {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('tasteprofile/status',\%extra);
}

sub profile {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('tasteprofile/profile',\%extra);
}

sub read {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('tasteprofile/read',\%extra);
}

sub feed {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('tasteprofile/feed',\%extra);
}

sub delete {
    my ($self,%extra) = @_;

    return $self->send_post_request('tasteprofile/delete',\%extra);
}

sub list {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('tasteprofile/list',\%extra);
}

sub similar {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('tasteprofile/similar',\%extra);
}

sub predict {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('tasteprofile/predict',\%extra);
}

no Moose;
__PACKAGE__->meta->make_immutable;

1;

__END__

=pod

=head1 NAME

WWW::TheEchoNest::TasteProfile - Wrapper for The Echo Nest API of music intelligence Taste Profiles

=head1 VERSION

version 1.1

=head1 SYNOPSIS

my $api_key = $ENV{EN_API_KEY} || 'YOUR EN API KEY';

my $tasteprofile = WWW::TheEchoNest::TasteProfile->new( api_key => $api_key );

# don't do this in the real world! each taste profile name has to be unique
# so create something to ensure you can locate them in the future

my $cat_name = "WWWTheEchoNestTest_$$" . rand(1000); 

# create an artist tasteprofile

$tasteprofile->create( type => 'artist' , name => $cat_name );

my $tasteprofile_id = $tasteprofile->get( 'id' );

=head1 DESCRIPTION

Allows for interacting with The Echo Nest Taste Profile (/tasteprofile) calls

The taste profile calls rely on json that is passed in to perform certain actions
so you should have a good JSON checker handy.  This module provides a crude
good or bad method you can use to check the JSON before sending. See the
synopsis below.

All modules use Moose so 'use strict' will be auto loaded with in your script
so beaware of how you scope your variables if you are new to Perl.

=head1 NAME

WWW::TheEchoNest::TasteProfile

=head1 METHODS

=head2 ban

Ban a particular taste profile item. This can also be done through the update
method, but this method only allows for one item at a time.

 $tasteprofile->ban( id => 'CAxxxxxxxxxxxxxxxx',
                item => 'theItemName'
                );

=head2 create

 $tasteprofile->create();

=head2 delete

 $tasteprofile->delete();

=head2 favorite

 $tasteprofile->favorite();

=head2 feed

 $tasteprofile->feed();

=head2 keyvalues

 $tasteprofile->keyvalues();

=head2 list

 $tasteprofile->list();

=head2 play

 $tasteprofile->play();

=head2 predict

 $tasteprofile->predict();

=head2 profile

 $tasteprofile->profile( id => 'CAxxxxxxxxxxxxxxxx' );
 
 # if tasteprofile exists
 
 my $tickets = $tasteprofile->get( 'tasteprofile.pending_tickets' );
 
 # the above will return an array ref that contains the list of
 # of pending tickts if any.
 
 my ($total,$resolved) = $tasteprofile->get( 'tasteprofile.total',
                                        'tasteprofile.resolved'
                                        );

 print "There are $total items in 'CAxxxxxxxxxxxxxxxx' and $resolved of them have been resolved\n";

=head2 rate

Allows you to rate a particular taste profile item.

 $tasteprofile->rate(
                    id => 'CAxxxxxxxxxxxxxxxx',
                    item => 'theItemName' );
 
 # defaults to 5 you can also pass in 0 - 10
 
 $tasteprofile->rate(    'CAxxxxxxxxxxxxxxxx',
                    item => 'theItemName',
                    rating => 9
                    );

=head2 read

 $tasteprofile->read();

=head2 similar

 $tasteprofile->similar();

=head2 skip

 $tasteprofile->skip();

=head2 status

Get the status of an update that has been sent. You must have a ticket to
reference. A ticket is a md5 checksum that is returned with the update call.

 $tasteprofile->status( ticket => 'abcdeabcdeabcdeabcdeabcdeabcdeab' );

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
    
 $tasteprofile->update(  id => 'CAxxxxxxxxxxxxxxxx',
                    data => $keyvalue_json
                  );

This method can also be used to update the taste profile (not the items) with
key value pairs. The Echo Nest documentation contain more specifics on
what is allowed.

    my $tasteprofile_kv_json = qq~[
       {
           "action":"update",
           "tasteprofile_keyvalues": {
                "type": "user",
                "gender": "male",
                "yob": "1959",
                "zipcode": "03101"
           }
       }
    ]~;

 $tasteprofile->update(  id => 'CAxxxxxxxxxxxxxxxx',
                    data => $tasteprofile_kv_json
                  );

Reminder that "tasteprofile_keyvalues" is for the *tasteprofile* not the individual
items.

=head1 AUTHOR

Aaron Johnson <aaronjjohnson@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Aaron Johnson.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
