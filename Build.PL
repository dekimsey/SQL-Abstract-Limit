use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'SQL::Abstract::Limit',
    license             => 'perl',
    dist_author         => 'David Baird <cpan@riverside-cms.co.uk>',
    dist_version_from   => 'lib/SQL/Abstract/Limit.pm',
    requires => { 'Test::More' => 0,
                  'Test::Exception' => 0,
                  'DBI' => 0, # for DBI::Const::GetInfoType
                  'SQL::Abstract' => 0,
                  },
    add_to_cleanup      => [ 'SQL-Abstract-Limit-*' ],
);

$builder->create_build_script();