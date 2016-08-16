use common::sense;

our $hoge1 = '001';
warn $hoge1;

sub fuga {
    our $hoge2 = '002';
    warn $hoge1;
    warn $hoge2;
}

warn $hoge2;

fuga();

warn $hoge2;
