use common::sense;
use Data::Dumper;

my @fruits = qw (apple orange strawberry melon rasberry);

my $sprt    = ",";
my $newline = '\n';

#=pod
#  map
#=cut
print split( $sprt, @fruits );
print("\n");

print map { length } @fruits;
print("\n");

#=pod
#  grep/filter
#=cut
print grep { length > 5 } @fruits;
print("\n");

print grep { /berry/ } @fruits;
print("\n");

#=pod
#  for
#=cut
for (@fruits) { print $_ }
print("\n");

#=pod
#  join
#=cut
print join $sprt, map { uc } @fruits;
print("\n");

#=pod
#  reduce
#=cut
use List::Util qw( reduce );

print Dumper reduce { push @{ $a->{ length($b) } }, $b; $a }{}, @fruits;

