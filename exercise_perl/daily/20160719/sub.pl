#!/usr/bin/perl

use feature qw(current_sub);
use Data::Dumper;

warn Dumper __SUB__;
&hoge;

sub hoge {
    warn Dumper __SUB__;
}

