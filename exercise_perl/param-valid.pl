use Params::Validate qw(:all);
use Data::Dumper;

sub foo {
    my $args = validate(
        @_,
        {
            hoge => 1,    ## mandatory (必須)
            fuga => 0,    ## optional
        }
    );

    warn Dumper $args;
    warn $args->{fuga};

    print $args->{hoge}, "\n";
    print $args->{fuga}, "\n" if defined $args->{fuga};
}

sub chk_defined {
    warn 1;
    my $args = validate(
        @_,
        {
            password           => { type => SCALAR, },
            password_algorithm => {
                type      => SCALAR,
                default   => 'sha256',
                optional  => 1,
                callbacks => {
                    'is valid password_algorithm' => sub {
                        return 1 if $_[0] eq 'sha256';
                        die "$_[0] is not a valid algorithm";
                    },
                },
            },
        }
    );

    #my $algo = $args->{password_algorithm} ||= 'sha256';
    my $algo = $args->{password_algorithm};
    warn Dumper $algo;

    #    warn Dumper $args->{password};
}

=pod
Case:1
=cut

my %hash = ( hoge => 100, fuga => 200 );

#foo( %hash );
#foo( \%hash );

=pod
Case:2
=cut

#my %params = ( password => 'hogehoge' );
my %params = ( password => 'hogehoge', password_algorithm => 'md5' );
chk_defined( \%params );

