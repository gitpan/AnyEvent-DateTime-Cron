#!/usr/local/bin/perl

use strict;
use warnings;

use AnyEvent::DateTime::Cron();
use Devel::Leak::Object qw(GLOBAL_bless);
our $c;

for (1..3) {
$c = AnyEvent::DateTime::Cron->new->debug(1)->add(
    '* * * * *', name=>'foo', sub { print "Foo\n"},
    '*/2 * * * *', name=>'bar', sub { print "Bar\n"; $c->delete(1)},

);

$c->start->recv;
}

undef $c;
