package Fuga;

use Data::Dumper;
use Hoge;

BEGIN {
    warn Dumper \caller;
    warn 2;
}

1;
