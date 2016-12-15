package Use::First;
use common::sense;

BEGIN {
    push @{main::ORDER}, 1;
}

use Use::Second;

sub import {
    push @{main::ORDER}, 4;
}

push @{main::ORDER}, 3;

BEGIN {
    push @{main::ORDER}, 2;
}

1;
