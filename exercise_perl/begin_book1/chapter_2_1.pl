use common::sense;

sub calc_circumference {
    my $rad = shift;
    $rad * 2 * 3.14;
}

warn calc_circumference(4);

