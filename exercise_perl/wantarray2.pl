# wantarray is dependent on caller data class.
my @ary = &hoge();
my $scl = &hoge();
&hoge();

sub hoge {
    warn defined wantarray;
    warn wantarray;
}

