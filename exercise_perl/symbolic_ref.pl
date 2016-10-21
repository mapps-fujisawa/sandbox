#use common::sense;
use Data::Dumper;

my @list = (100, 200, 300);
my $sclr = 'list';

warn Dumper $sclr;

warn $list[1];      #200
warn $sclr->[1];    #200?? in the past....
