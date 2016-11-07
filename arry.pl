use common::sense;

=pod
my @crew = qw('hoge' 'fuga' 'piyo');
warn @crew;
=cut

my @data1 = qw(one wan);
my @data2 = qw(two too to);
#warn @data1;
#warn @data2;

push @data1, @data2;
warn @data1;

my $fruits;
$fruits = \@data1;
warn $fruits;
