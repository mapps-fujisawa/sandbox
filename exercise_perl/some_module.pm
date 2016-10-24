package Some::Module;

use common::sense;

BEGIN {
    use Exporter();
    our ( $VERSION, @ISA, @EXPORT, @EXPORT_OK, %EXPORT_TAGS );

    $VERSION = 1.00;

    #$VERSION = sprintf "%d.%03d", $Revision: 1.1 =~ /(\d+)/g;
    #warn sprintf "%d.%03d", '123', '333';

    @ISA         = qw(Exporter);                  #inherit form this package
    @EXPORT      = qw(func1, func2, func4);    #export default
    %EXPORT_TAGS = ();                            #export selective
    @EXPORT_OK = qw($var1 %hashit func3);  #export only when you explicily call
}

# definition param
# exported package
our $var1 = '';
our %Hashit = ();

# non-exported
our @more = ();
our $stuff = '';

# file-private lexicals
my $priv_var = '';
my %secret_hash = ();

# file-privilage function
my $priv_func = sub {
    # some function here
}

# functions called from other module
sub func1 {
#...
}

sub func2 {
#...
}

# this isn't exported
sub func3 {
#...
}

END {

}


1;

=pod

Ref:

http://perldoc.jp/docs/perl/5.18.1/perlmod.pod

howto:

use Module;

or

use Module qw( func1 func2 );

BEGIN { require 'Module.pm'; 'Module'->import; }

=cut
