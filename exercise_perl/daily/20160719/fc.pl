#!/usr/bin/perl

use feature qw(current_sub);
use Data::Dumper;

warn Dumper __SUB__;

my $this = 'hoge';
my $that = 'HOGE';

warn lc($this) eq lc($that);    # Wrong!
        # or
warn uc($this) eq uc($that);    # Also wrong!
        # or
warn $this =~ /^\Q$that\E\z/i;  # Right!

