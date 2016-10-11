use common::sense;

sub on_assign {
    my $hoge = 'msg';
}

on_assign;
print $hoge; #SCOPE ERROR

