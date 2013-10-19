package WWW::TheEchoNest::Artist;

use Moose;

# ABSTRACT: Wrapper for The Echo Nest API of music intelligence artist calls

{
    $WWW::TheEchoNest::Artist::VERSION = '1.0';
}

use Data::Dumper;

extends 'WWW::TheEchoNest';

sub consolidate {
    my ($self,%extra) = @_;

    my @items = @{ $extra{calls} };
    delete $extra{calls};

    my @results;

    foreach my $item (@items) {
        if ( $self->debug() ) {
            print Dumper(\%extra);
        }
        # need to document the difference between normal and auto_json_decode
        # return values
        push @results , $self->$item( %extra );
    }
    return @results;
}

sub biographies {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('artist/biographies',\%extra);
}

sub blogs {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('artist/blogs',\%extra);
}

sub familiarity {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('artist/familiarity',\%extra);
}    

sub hotttnesss {
    my ($self,%extra) = @_;

    return $self->request_with_minimum('artist/hotttnesss',\%extra);
}    

sub images {
    my ($self,%extra) = @_;
    
    return $self->request_with_minimum('artist/images',\%extra);
}

sub list_genres {
    my ($self,%extra) = @_;
    
    my $result = $self->request_with_no_minimum('artist/list_genres',\%extra);
    
    if (wantarray) {
        return @{$self->get( 'genres[*].name' )};
    }
    
    return $result;
}

sub list_terms {
    my ($self,%extra) = @_;
    
    return $self->request_with_no_minimum('artist/list_terms',\%extra);
}

sub news {
    my ($self,%extra) = @_;
    
    return $self->request_with_minimum('artist/news',\%extra);
}

sub profile {
    my ($self,%extra) = @_;
    
    return $self->request_with_minimum('artist/profile',\%extra);
}

sub reviews {
    my ($self,%extra) = @_;
    
    return $self->request_with_minimum('artist/reviews',\%extra);
}

sub search {
    my ($self,%extra) = @_;
    
    return $self->request_with_minimum('artist/search',\%extra);
}

sub extract {
    my ($self,%extra) = @_;
    
    return $self->request_with_minimum('artist/extract',\%extra);
}

sub songs {
    my ($self,%extra) = @_;
    
    return $self->request_with_minimum('artist/songs',\%extra);
}

sub similar {
    my ($self,%extra) = @_;
    
    return $self->request_with_minimum('artist/similar',\%extra);
}

sub suggest {
    my ($self,%extra) = @_;
    
    return $self->request_with_minimum('artist/suggest',\%extra);
}

sub terms {
    my ($self,%extra) = @_;
    
    return $self->request_with_minimum('artist/terms',\%extra);
}

sub top_hottt {
    my ($self,%extra) = @_;
    
    return $self->request_with_minimum('artist/top_hottt',\%extra);
}

sub top_terms {
    my ($self,%extra) = @_;
    
    return $self->request_with_minimum('artist/top_terms',\%extra);
}

sub twitter {
    my ($self,%extra) = @_;
    
    return $self->request_with_minimum('artist/twitter',\%extra);
}

sub urls {
    my ($self,%extra) = @_;
    
    return $self->request_with_minimum('artist/urls',\%extra);
}

sub video {
    my ($self,%extra) = @_;
    
    return $self->request_with_minimum('artist/video',\%extra);
}

no Moose;
__PACKAGE__->meta->make_immutable;

1;

__END__

=pod

=head1 NAME

WWW::TheEchoNest::Artist - Wrapper for The Echo Nest API of music intelligence artist calls

=head1 VERSION

version 0.2

=head1 SYNOPSIS

 use WWW::TheEchoNest::Artist;
 
 my $api_key = 'YOUR API KEY';
 
 my $artist = WWW::TheEchoNest::Artist->new( api_key => $api_key );

=head1 DESCRIPTION

The Echo Nest artist related calls are provided by this module

=head1 NAME

WWW::TheEchoNest::Artist

=head1 METHODS

=head2 biographies

 $artist->biographies( name => 'Lady GaGa' );

=head2 blogs

 $artist->blogs();

=head2 consolidate

This is a convienence method that allows you to call several of the
artist calls via a single method.

NOTE each call is made independently by the colsidate method and will
increment your rate limit used by the number of calls passed in.

It is recommended you ensure what you are doing works outside of
the context of condolidate before using it.

 my @results = $ten_artist->consolidate(
                        calls => [ 'biographies' , 'hotttnesss' , 'images' ],
                        name => 'Lady GaGa',
                        results => 1
                                       );

=head2 extract

 $artist->extract();

=head2 familiarity

 $artist->familiarity();

=head2 hotttnesss

 $artist->hotttnesss();

=head2 images

 $artist->images();

=head2 list_genres

 $artist->list_genres();
 
 special case method that allows you to ask for it in array context it will
 return an array of available genres.
 
 my @genres = $artist->list_genres();

=head2 list_terms

 $artist->list_terms( name => 'Lady GaGa' );

=head2 news

 $artist->news( name => 'Lady GaGa' );

=head2 profile

 $artist->profile( name => 'Lady GaGa' );

=head2 reviews

 $artist->reviews( name => 'Lady GaGa' );

=head2 search

 $artist->search( name => 'Lady GaGa' );

=head2 similar

 $artist->similar( name => 'Lady GaGa' );

=head2 songs

 $artist->songs( name => 'Lady GaGa' );

=head2 suggest

 $artist->suggest( name => 'Lady GaGa' );

=head2 terms

 $artist->terms( name => 'Lady GaGa' );

=head2 top_hottt

 $artist->top_hottt( name => 'Lady GaGa' );

=head2 top_terms

 $artist->top_terms( name => 'Lady GaGa' );

=head2 twitter

 $artist->twitter( name => 'Lady GaGa' );

=head2 urls

 $artist->urls( name => 'Lady GaGa' );

=head2 video

 $artist->video( name => 'Lady GaGa' );

=head1 AUTHOR

Aaron Johnson <aaronjjohnson@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Aaron Johnson.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
