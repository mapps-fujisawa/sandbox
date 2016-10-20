use common::sense;
use Data::Dumper;
use DateTime;

my %test_map = (
    'rcd' => {
        'q001' => { '$date' => 241660800000 },
        'q002' => 300,
        'q060' => { '$date' => 1325376000000 }
    },
);

foreach my $secondkey (sort keys %{ $test_map{rcd} }) {

    # $secondkeyの要素が取り出せる
    warn Dumper $secondkey;
    warn Dumper $test_map{rcd}{$secondkey};

#warn (HASH $test_map{rcd});
warn Dumper (ref $test_map{rcd}{$secondkey});

    warn "\$hash key exists: "
        . (exists $test_map{rcd}{$secondkey}{'$date'} ? "yes" : "no") . "\n";
    warn "\$hash key is defined: "
        . (defined $test_map{rcd}{$secondkey}{'$date'} ? "yes" : "no") . "\n";
}

#my $dt = DateTime->from_epoch(epoch => $test_map->{rcd}->{q001}->{'$date'} / 1000);
#warn $dt;

#warn Dumper %test_map;

