use common::sense;

sub adder {
    my ($x, $y) = @_;
    $x + $y
}

# & exist
print &adder(1, 2) . "\n";
# & not exist
print adder(1, 2) . "\n";
