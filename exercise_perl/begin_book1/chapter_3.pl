use common::sense;
use Data::Dumper;

=pod
Practice Array
=cut
# [idx]
my @arr1 = (1,2,3);
$arr1[0] = 99;
#print @arr1;

# [-1]
my @arr2 = (1..10);
#print @arr2;
print $arr2[-1]."\n";

# qw
my @arr3 = qw( hoge1 hoge2 hoge3 );
print @arr3."\n";

# pop
my @arr4 = 5 .. 9;
my $scl4_1 = pop(@arr4);
print $scl4_1;
print "\n";

# push 
push(@arr4, 10);
print @arr4;
print "\n";

# shift
my $scl4_2 = shift(@arr4);
print $scl4_2;
print "\n";

# unshift
unshift(@arr4, 99);
print @arr4;
print "\n";

# splice
my @arr5 = qw( hoge1 hoge2 hoge3 hoge4 hoge5 );
my @arr5_1 = splice @arr5, 2;
print @arr5;
print "\n";

# splice ver2
my @arr6 = qw( hoge1 hoge2 hoge3 hoge4 hoge5 );
my @arr6_1 = splice @arr6, 1, 2, qw( hoge10 hoge11 );
print @arr6;
print "\n";

=pod
Practice Loop
=cut





