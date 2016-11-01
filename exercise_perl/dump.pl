use common::sense;
use Data::Dumper;

my @arr = (1,2,3,4);
#warn @arr;
#warn Dumper @arr;

#warn shift @arr;
warn Dumper \@arr;

foreach (@arr) {
    warn 999;
}

=pod
memo: change array to reference, when you set array into hash.
=cut
my %hs = (hoge => 1, fuga => 2, foo => \@arr);
#warn %hs;
#warn Dumper \%hs;

#warn %hs->{foo};
#warn Dumper %hs->{foo};


=pod
hash example
=cut
my $var = {
    array => [1,2,3],
    hash => {
        key1 => "val1", 
        key2 => "val2"
    },
    coderef => sub { "this is coderef"}
};

#print Dumper $var;

