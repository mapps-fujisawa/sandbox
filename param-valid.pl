use Params::Validate qw(:all);
use Data::Dumper;

sub foo {
  my $args = validate( @_, { 
    hoge => 1,     ## mandatory (必須)
    fuga => 0,     ## optional
  });

warn Dumper $args;
warn $args->{fuga};

  print $args->{hoge}, "\n";
  print $args->{fuga}, "\n" if defined $args->{fuga};
}


my %hash = ( hoge => 100, fuga => 200 );
#foo( %hash );  
foo( \%hash ); 
