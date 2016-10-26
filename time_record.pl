use common::sense;
use Data::Dumper;
use List::Util qw(
  reduce any all none notall first
  max maxstr min minstr product sum sum0
  pairs unpairs pairkeys pairvalues pairfirst pairgrep pairmap
  shuffle uniq uniqnum uniqstr
);

my $foo;
$foo = reduce { $a > $b ? $a : $b } 1 .. 10;
warn $foo;
$foo = reduce { $a gt $b ? $a : $b } 'A' .. 'Z';
warn $foo;


use Time::HiRes qw( usleep gettimeofday tv_interval );
my $t0;
$t0 = [gettimeofday];

# case : 39msec
$foo = reduce { $a + $b } 1 .. 1000000;
warn $foo;
say int(tv_interval($t0) * 1000), 'msec';

# case2 : 5msec
$t0 = [gettimeofday];
$foo = sum 1 .. 1000000;
warn $foo;
say int(tv_interval($t0) * 1000), 'msec';

# case3 : 32msec
$t0 = [gettimeofday];
$foo = 0;
$foo += $_ for 1 .. 1000000;
warn $foo;
say int(tv_interval($t0) * 1000), 'msec';


