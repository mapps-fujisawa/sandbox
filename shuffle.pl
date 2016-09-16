use Data::Dumper;

my @data = qw( 0 1 2 3 4 5 6 7 8 9 );
my @shuffle = sort { rand() <=> 0.5 } @data;

print Dumper \@shuffle; 
