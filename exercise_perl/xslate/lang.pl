use strict;
use Text::Xslate;

my %vpath = ( hello => 'Hello, <: $lang :> world!' . "\n", );
my $tx = Text::Xslate->new(
    path         => \%vpath,
    verbose      => 2,
    warn_handler => sub { Text::Xslate->print( '[[', @_, ']]' ) },
);

print $tx->render( 'hello', {} );

# => Hello, [[use nil to print at ...]] world!

