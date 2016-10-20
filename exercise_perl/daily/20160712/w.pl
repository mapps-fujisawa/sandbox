use Data::Dumper;

{
warn Dumper $^W;
    local ($^W) = 0;
    my $a = +2;
    my $b;
    chop $b;
}
