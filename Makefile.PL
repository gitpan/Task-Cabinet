use v5.10.1;
use ExtUtils::MakeMaker;

my %options = (
    'NAME'          => 'Task-Cabinet',
    'VERSION_FROM'  => 'lib/Task/Cabinet.pm',
    'AUTHOR'        => 'Anton Gerasimov <chim@cpan.org>',
    'ABSTRACT_FROM' => 'lib/Task/Cabinet.pm',
    'LICENSE'       => 'perl',
    'PREREQ_PM'     => {
        'Carp' => 0,
        'YAML' => 0,
        'Template' => 0,
        'Plack' => 0,
        'Starman' => 0,
        'Bundle::PlRPC' => 0,
        'DBI' => 0,
        'Redis' => 0,
        'Dancer' => 0,
        'Dancer::Debug' => 0,
        'Dancer::Plugin::Database' => 0,
        'Dancer::Plugin::Redis' => 0,
        'Dancer::Session::Redis' => 0,
        'Try::Tiny' => 0,
        'JSON' => 0,
        'JSON::XS' => 0,
        'Time::HiRes' => 0,
        'Digest::MurmurHash' => 0,
        'Net::CIDR::Lite' => 0,
        'Text::MicroTemplate' => 0,
        'WWW::Mechanize' => 0,
        'Plack::Middleware::Debug' => 0,
        'Plack::Middleware::Debug::DBIProfile' => 0,
        'Template::Plugin::Octets' => 0,
        'List::MoreUtils' => 0,
        'Plack::Middleware::Debug::Redis' => 0,
    },
    'BUILD_REQUIRES' => {
        'Test::More' => '0.98',
        'Test::Pod'  => '1.22',
    },
    'MIN_PERL_VERSION' => '5.10.1',
    'test' => {
        'TESTS' => 't/*.t',
    },
    'clean' => {
        'FILES' => '*.tar.gz',
    }
);

WriteMakefile(%options);
