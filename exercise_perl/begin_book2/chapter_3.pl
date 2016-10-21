use common::sense;
use Data::Dumper;

my @members = qw(10 12 14 15 27 34 44 49 65 78 90 92);

=pod
howto use "grep"
=cut

#my @selected = grep is_selected($_), @members;
my @selected = grep $_ % 3 == 1, @members;
#warn Dumper @selected;

sub is_selected {
    my $member = shift;
    return  $member % 3 == 1;
}

my @search_no_4 = grep /4$/, @members;
warn Dumper @search_no_4;
warn "\n";

my @lg_10 = grep $_ > 50, @members;
warn Dumper @members;
warn "\n";

my @sum_digit_odd = grep sum_odd_digit($_), @members;
warn Dumper @sum_digit_odd;
warn "\n";

sub sum_odd_digit {
    my $input  = shift;
    my @digits = split //, $input;    # number only
    my $sum;
    $sum += $_ for @digits;
    return $sum % 2;
}

=pod
Diff of perl & Haskell
http://qiita.com/debug-ito/items/f5b90c6e2c86bf97a66f
=cut

