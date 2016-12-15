use Use::Second;
use common::sense;

BEGIN {
    push @{mail::ORDER}, 'a';
}

use Use::First;

sub import {
    push @{mail::ORDER}, 'd';
}

push @{mail::ORDER}, 'c';

BEGIN {
    push @{main::ORDER}, 'b';
}

1;

