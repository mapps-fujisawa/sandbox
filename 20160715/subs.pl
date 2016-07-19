#use strict 'subs';
use Data::Dumper;

#warn Dumper $SIG{PIPE};
#$SIG{PIPE} = Plumber;       # ダメ
#warn Dumper $SIG{PIPE};
#$SIG{PIPE} = "Plumber";     # 問題なし: 中括弧の中ならいつでも裸で ok
#warn Dumper $SIG{PIPE};
#$SIG{PIPE} = \&Plumber;     # 好ましい方法
#warn Dumper $SIG{PIPE};

warn Dumper $TEST{PIPE};
$TEST{PIPE} = Plumber;       # ダメ
warn Dumper $TEST{PIPE};
$TEST{PIPE} = "Plumber";     # 問題なし: 中括弧の中ならいつでも裸で ok
warn Dumper $TEST{PIPE};
$TEST{PIPE} = \&Plumber;     # 好ましい方法
warn Dumper $TEST{PIPE};

sub Plumber {1;}

