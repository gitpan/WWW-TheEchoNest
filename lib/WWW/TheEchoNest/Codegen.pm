package WWW::TheEchoNest::Codegen;

use Moose;

extends 'WWW::TheEchoNest';

# ABSTRACT: Wrapper for The Echo Nest API of music intelligence echoprint codegen

use Scalar::Util qw(tainted);
use IO::CaptureOutput qw( capture qxx qxy );

# get some echoprint-codegen strings

has start_x_seconds_in => (
    is       => 'rw',
    isa      => 'Int',
    default  => 10
);

has x_seconds_of_audio => (
    is       => 'rw',
    isa      => 'Int',
    default  => 30
);    

has file_location => (
    is        => 'rw',
    isa       => 'Str'
);

sub codegen_mp3 {
    my $self = shift;
    
    # define where to start
    my $start = $self->start_x_seconds_in();
    my $seconds = $self->x_seconds_of_audio();
    my $file_location = $self->file_location();
    
    # may want to tigten up the security a bit more here
    # for now variables are untainted and IO::CaptureOutput is used instead of backticks
    
    my $codegen_binary = $self->codegen_command() || "echoprint-codegen";
    
    if ($seconds == 0 || $seconds =~ /\D/) {
        return "Need valid length of audio to capture: song/identify - x_seconds_of_audio\n";
    }
    
    if ($start < 0 || $start =~ /\D/) {
        return "Need a valid start point in the audio: song/identify - start_x_seconds_in\n";
    }
    
    # a step in the right direction, but need to add a bit more checking
    if (tainted($file_location) || tainted($seconds) || tainted($start) ) {
        return "something you passed in to codegen_mp3 is not permitted\n";
    }
    
    # going to try and releverage the IO::CaptureOutput module here
    
    my ( $stdout , $stderr , $success ) = qxx( $codegen_binary , $file_location , $start , $seconds );
    
    if ( $self->is_valid_json($stdout) == 1 ) {
        return $stdout;
    } else {
        return 0;
    }

    # return `$codegen_binary "$file_location" $start $seconds`;
}

no Moose;
__PACKAGE__->meta->make_immutable;

1;

__END__

=pod

=head1 NAME

WWW::TheEchoNest::Codegen - Wrapper for The Echo Nest API of music intelligence echoprint codegen

=head1 VERSION

version 0.3

=head1 DESCRIPTION

You should not need to use these methods directly, they are used for song/identify calls

You may however want to set some of the paramters as the defaults assume the
echoprint codegen binary is in your path and working correctly.

 start_x_seconds_in
 x_seconds_of_audio
 file_location

=head1 NAME

WWW::TheEchoNest::Codegen

=head1 METHODS

=head2 codegen_mp3

 $song->codegen_mp3([start offset],[seconds],[path]);

=head2 start_x_seconds_in

 $song->start_x_seconds_in(5);

=head2 x_seconds_of_audio

 $song->x_seconds_of_audio(20);

=head2 file_location

 Not part of the API and normally set as a call to the song/identify request.

=head1 AUTHOR

Aaron Johnson <aaronjjohnson@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Aaron Johnson.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
