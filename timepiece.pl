use common::sense;
use DateTime;
use Time::Piece;

use Data::Dumper;

# ex: $answered_ts = 1413870640;
my $tp = localtime->epoch;
my $dt = DateTime->from_epoch(epoch => $tp);

warn Dumper $dt->strftime('%Y/%m/%d %H:%M:%S');
