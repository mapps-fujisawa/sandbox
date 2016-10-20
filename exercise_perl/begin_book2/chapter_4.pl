use common::sense;
use Data::Dumper;

=pod
calling of several pattern
=cut
my %gilligan = map { $_, 1 } qw (red_shirt hat lucky_socks water_bottle);

###You could write both of below;
#warn Dumper %gilligan->{hat};
warn Dumper $gilligan{hat};

my @skipper = qw(hoge1 hoge2 hoge3);
my $ref_skipper = \@skipper;
warn Dumper $ref_skipper;

my $hs = {hoge10 => 10, hoge11 => 11, hoge12 => 12};
warn Dumper $hs;

=pod
reference of array
=cut
my $array = [1, 2, 3, 4 ,5];
my $array2 = [map { $_ * 2 } @$array];

warn Dumper $array2;

=pod
reference of hash
=cut
my $hash = { h1 => 10, h2 => 20, h3 => 30 };
my $hash2 = { map { $_ => $hash->{$_} * 2 } keys %$hash };

warn Dumper $hash2;



