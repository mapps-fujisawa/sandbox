package Hoge1;

sub fuga1 {
    warn "fuga001";
}

package Hoge2;

sub fuga1 {
    warn "fuga002";
}

package Hoge3;

sub fuga1 {
    warn "fuga003";
}

package Test;

@ISA = qw /Hoge1 Hoge2 Hoge3/;

warn @ISA;

package main;

#warn @{Test::ISA};
#warn Test->fuga1();

warn $_->fuga1() foreach @{Test::ISA};


