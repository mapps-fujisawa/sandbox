use Data::Dumper;
%names;
#warn Dumper $names{a};
#warn ++$names{a} + 3;

my @in = qw(a b c a);
@in = grep { ++$names{$_} == 1; print Dumper $names{$_}} @in;
