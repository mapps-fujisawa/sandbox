our $hoge = 1;

warn &fuga;
{
     local $hoge = 2;
    warn &fuga;
}

warn &fuga;

sub fuga {
    $hoge;
}
