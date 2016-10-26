use common::sense;
use Time::HiRes qw( usleep gettimeofday tv_interval );

# 現在時刻を取得（[currentsec, currentmicrosec]の構造になっている）
my $t0 = [gettimeofday];

# # 200 * 1000マイクロ秒 → 200ミリ秒のsleep
usleep(200 * 1000);

# #  浮動小数点数で経過時間を取得（このサンプルだと0.20xxxx秒程）
my $elapsed = tv_interval($t0);

say int($elapsed * 1000), " msec";
