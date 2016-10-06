my %h_1 = ( map { ("key_$_" => $_); } 1 .. 4);
my $s_1 = %h_1;
#warn $s_1;
#

foreach (@_){
    ($heavy = /\W:/) and last;
};


