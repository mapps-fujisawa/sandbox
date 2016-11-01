
@_       = qw(hoge fuga);
@_       = qw();
my @exports = qw( a b c);
my $args    = @_ or @_ = @exports;

#my $hoge = undef or print 3;

warn $args;
warn @_;

#warn $hoge;


warn (0 or 2 and 0 or 0);
warn (0 or 2 and 0 or 3 or 4 and 5 and 0);

warn (0 or (2 and 0) or 3 or (4 and 5 and 0));
warn ((0 or 2) and (0 or 3 or 4) and 5 and 0);

warn ((((((0 or 2) and 0) or 3) or 4) and 5) and 0);
