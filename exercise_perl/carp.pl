use Carp;
use Data::Dumper;

warn Dumper $::{"utf8::"};
warn Dumper $main::{"utf8::"};

warn Dumper *{$::{"utf8::"}}{HASH};

#warn Dumper *{*{$::{"utf8::"}}{HASH}->{"is_utf8"}}{CODE};
#warn Dumper *is_utf8;

#my $tmp = Carp->is_utf8(();
#warn Dumper $tmp;
