use common::sense;
use Test::More;
use Test::Mock::Guard qw(mock_guard);

{
    package SomeClass;
    sub new { bless {}, __PACKAGE__ }

    sub some_method {
        my ( $self, $args ) = @_;
        return $args ? $self->foo : $self->bar;
    }

    sub foo { 'foo' }
    sub bar { 'bar' }
}

my $obj = SomeClass->new;

subtest 'called foo' => sub {
    is $obj->some_method(1), 'foo';

    my $guard = mock_guard $obj => {
        foo => 'hoge',
        bar => sub { die 'fault' },
    };

    subtest 'Dies during transaction' => sub {
        throws_ok {
            $obj->some_method(0);
        }
        qr/fault/;
    };

    is $obj->some_method(1), 'hoge';
    eval { $obj->some_method(0) };
    like $@, '/fault/';
    is $guard->call_count( $obj, 'foo' ), 1;
    is $guard->call_count( $obj, 'bar' ), 1;
};

done_testing;

1;
