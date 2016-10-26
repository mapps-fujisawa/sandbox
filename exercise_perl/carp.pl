#use Carp ();

#warn Carp->croak('test');
#warn Carp::croak('test');
#
use Data::Dumper;

my %hash1 = ();

#my $hash1 = \%hash1;
warn Dumper \%hash1;

if (%hash1) {
    warn 1;
}
else {
    warn 0;
}

#my $hash = {};
#
my %hash2 = (key1 => 1, key2 => 2);
warn Dumper \%hash2;
warn %hash2->{'key2'};
warn Dumper \%hash2->{'key2'};
warn %hash2->{key2};


my $hash3 = {key1 => 1, key2 => 2};
warn Dumper $hash3;
warn $hash3->{key1};
warn $hash3->{'key1'};
#warn $hash3{'key1'}; #ERROR

