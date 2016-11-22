#use common::sense;
use strict;
use warnings;
use Test::More;
use Test::Pretty;

subtest 'MessageFilter' => sub {
    my $filter = MessageFilter->new('foo');

    subtest 'should detect message with NG word' => sub {
        ok($filter->detect('hello from foo'));
    };

    subtest 'shold not detect message without NG word' => sub {
        ok !($filter->detect('hello world'));
    };
};

done_testing;

