
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601",
    "Test::More" => 0
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "AnyEvent crontab with DateTime::Event::Cron",
  "dist_author" => [
    "Clinton Gormley <drtech\@cpan.org>"
  ],
  "dist_name" => "AnyEvent-DateTime-Cron",
  "dist_version" => "0.02",
  "license" => "perl",
  "module_name" => "AnyEvent::DateTime::Cron",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "AnyEvent" => 0,
    "DateTime" => 0,
    "DateTime::Event::Cron" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
