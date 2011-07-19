use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'AnyEvent::DateTime::Cron',
    license           => 'perl',
    dist_author       => q{Clinton Gormley <drtech@traveljury.com>},
    dist_version_from => 'lib/AnyEvent/DateTime/Cron.pm',
    build_requires    => { 'Test::More' => 0, },
    config_requires   => { 'Module::Build' => '0.38', },
    requires          => {
        'AnyEvent'              => 0,
        'DateTime'              => 0,
        'DateTime::Event::Cron' => '0.08',
    },
    add_to_cleanup     => ['AnyEvent-DateTime-Cron-*'],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
