use common::sense;
use Data::Dumper;
use List::Util qw(
  reduce any all none notall first
  max maxstr min minstr product sum sum0
  pairs unpairs pairkeys pairvalues pairfirst pairgrep pairmap
  shuffle uniq uniqnum uniqstr
);


# reduce
my $foo;
$foo = reduce { $a > $b ? $a : $b } 1 .. 10;
warn $foo;
$foo = reduce { $a gt $b ? $a : $b } 'A' .. 'Z';
warn $foo;

# any
my $flg = any { length > 5 } qw/ apple lemon strawberry /;
print $flg;
