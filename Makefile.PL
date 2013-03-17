
use strict;
use warnings;

use 5.010001;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Install all the CPAN modules needed by Cabinet",
  "AUTHOR" => "Anton Gerasimov <chim\@cpan.org>",
  "BUILD_REQUIRES" => {
    "Test::More" => 0,
    "Test::Pod" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Task-Cabinet",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Task::Cabinet",
  "PREREQ_PM" => {
    "Bundle::PlRPC" => 0,
    "Carp" => 0,
    "DBI" => 0,
    "Dancer" => 0,
    "Dancer::Debug" => 0,
    "Dancer::Plugin::Database" => 0,
    "Dancer::Plugin::Redis" => 0,
    "Dancer::Session::Redis" => 0,
    "Digest::MurmurHash" => 0,
    "JSON" => 0,
    "JSON::XS" => 0,
    "List::MoreUtils" => 0,
    "Net::CIDR::Lite" => 0,
    "Plack" => 0,
    "Plack::Middleware::Debug" => 0,
    "Plack::Middleware::Debug::DBIProfile" => 0,
    "Plack::Middleware::Debug::Redis" => 0,
    "Starman" => 0,
    "Template" => 0,
    "Template::Plugin::Octets" => 0,
    "Text::MicroTemplate" => 0,
    "Time::HiRes" => 0,
    "Try::Tiny" => 0,
    "WWW::Mechanize" => 0,
    "YAML" => 0
  },
  "VERSION" => "0.09",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


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



