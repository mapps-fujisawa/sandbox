use common::sense;

die "Can't open error log" if (! open STDERR, ">> ./error.log");

