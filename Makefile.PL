
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Wrapper for The Echo Nest API of music intelligence",
  "AUTHOR" => "Aaron Johnson <aaronjjohnson\@gmail.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "WWW-TheEchoNest",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "WWW::TheEchoNest",
  "PREREQ_PM" => {
    "Data::Dumper" => 0,
    "Digest::MD5::File" => 0,
    "File::Basename" => 0,
    "HTTP::Headers" => 0,
    "IO::CaptureOutput" => 0,
    "JSON::Path" => 0,
    "JSON::XS" => 0,
    "Moose" => 0,
    "Scalar::Util" => 0,
    "URI" => 0,
    "URI::Escape" => 0,
    "WWW::Mechanize" => 0,
    "XML::Simple" => 0
  },
  "TEST_REQUIRES" => {
    "Test::More" => 0,
    "lib" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.3",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  my $tr = delete $WriteMakefileArgs{TEST_REQUIRES};
  my $br = $WriteMakefileArgs{BUILD_REQUIRES};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



