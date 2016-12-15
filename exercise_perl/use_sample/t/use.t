use common::sense;
use Data::Dumper;
use Test::More;
use Test::Pretty;

our @ORDER = qw();

our $class = 'Use::First';
use_ok $class;

warn Dumper \@ORDER;

subtest 'confirm elem order followed package' => sub {
    is_deeply \@ORDER, [qw(1 b c d 2 3 4)];
};

done_testing;
