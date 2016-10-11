use common::sense;
#use List::Util qw(sum);
use Statistics::Lite qw(sum);

sub sumup {
    my @elem = @_;
    my $sum  = 0;

    #TYPE1 `simple`

=pod
    foreach (@elem) {
        $sum += $_;
    }
    $sum;
=cut

    #TYPE2 `List::Util`
    $sum = sum @elem;

}

print sumup( 1, 2, 3, 4 );
