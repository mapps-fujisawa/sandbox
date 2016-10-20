use common::sense;

my @gillican = qw (red_shirt hat lucky_strike water_bottle);
check_required_items('gillican', @gillican);

sub check_required_items {
    my $who = shift;
    my %who_items = map { $_, 1 } @_;

    my @required = qw(preserver sunscreen water_bottle jacket);

    for my $item (@required) {
        unless ( $who_items{$item} ) {
            print "$who is missing $item.\n";
        }
    }
}

