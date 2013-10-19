
package WWW::TheEchoNest::Song;

use Moose;
use Scalar::Util;

# ABSTRACT: Wrapper for The Echo Nest API of music intelligence song calls

{
    $WWW::TheEchoNest::Song::VERSION = '1.0';
}

extends 'WWW::TheEchoNest';

sub search {
    my ($self,%extra) = @_;

    return $self->request_with_no_minimum('song/search',\%extra);
}

sub profile {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('song/profile',\%extra);
}

sub identify {
    my ($self,%extra) = @_;
    
    if (!$extra{code}) {
        if (!$extra{query} && $extra{file_location}) {
            # need to get the codegen
            
            my $code_gen = WWW::TheEchoNest::Codegen->new( file_location => $extra{file_location} );
            
            my $json = $code_gen->codegen_mp3();
            
            if ( $self->debug() ) {
                print "$json\n";
            }
            if ($self->is_valid_json($json,'song_identify') == 1) {
                $extra{query} = $json;
                delete $extra{file_location};
            }

        }
        
        return $self->send_post_request('song/identify',\%extra);    
    } else {
        return $self->request_with_no_minimum('song/identify',\%extra);
    }
}

no Moose;
__PACKAGE__->meta->make_immutable;
    
1;

__END__

=pod

=head1 NAME

WWW::TheEchoNest::Song - Wrapper for The Echo Nest API of music intelligence song calls

=head1 VERSION

version 0.3

=head1 DESCRIPTION

The Echo Nest song API calls are provided with this module.

song/identify is used to indentify a song based on an echoprint (aka codegen)
or ENMPF segment.

=head1 NAME

WWW::TheEchoNest::Song

=head1 REQUIRES

song/identify requires you install echoprint-codegen

https://github.com/echonest/echoprint-codegen

=head1 METHODS

=head2 identify

To keep this method simple you can generally call it with the custom parameter of
file_location.  When that is the only parameter passed in most of the heavy lifting
is done under the hood.

 $song->identify(
    file_location => '/the/path/to/the/mp3',
 );

If you are not getting good results try setting the start offset and length of encoded
audio to send as outlined in the L<WWW::TheEchoNest::Codegen> module.

Currently Over The Air (OTA) recordings are not well supported by song/identify so
be sure the audio source file is as distortion free as possible.

You can also call this using all of the API parameters, but you will need to create a valid
codegen JSON block for the 'query' parameter.

 $song->identify(
    query => '[ ..json from codegen .. ]'
 );

=head2 profile

 profile();

=head2 search

 search();

=head1 AUTHOR

Aaron Johnson <aaronjjohnson@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Aaron Johnson.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
