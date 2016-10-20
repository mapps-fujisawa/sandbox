#/usr/bin
use Data::Dumper;

my $val1= "hoge";
&test();

sub test {
    warn "2";
}

warn Dumper test2;

BEGIN {
    warn "1";
#    warn Dumper test;
}

BEGIN {
    &test();
    warn "3";
}

#sub test {
    warn "2";
#}

1;
