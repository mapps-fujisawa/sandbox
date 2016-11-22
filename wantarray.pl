use Data::Dumper;

#Request for List
my ($h, $m, $s) = h_m_s();
warn "$h時 $m分 $s秒\n";

#Request for Scalar
my $now = h_m_s();
warn "現在時刻は $now です。\n";

sub h_m_s {
    my ($sec, $min, $hour) = (localtime)[0..2];
    if (wantarray) {
        return ($hour, $min, $sec);
    } else {
        return sprintf "%02d:%02d:%02d", $hour, $min, $sec;
    }
}
