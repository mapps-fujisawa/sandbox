#my @ary = ();
#push(@ary, 'test');
#push(@ary, 'test2');
#push(@ary, 'test3', 'test4');
#warn @ary;
#
##push('test3', 'test4');
#
#my @ary2 = (1,2,3);
#splice(@ary2, 1);
#warn @ary2;
use Data::Dumper;

my @ary = qw/A B C D E F G/;
my @s1 = @ary;
#@ret = splice @s1, 1, 2;

#warn @ret;

sub mysplice(\@$$) {
    my ($tmp, $offset, $len) = @_;
    splice $tmp, $offset, $len;
}
warn mysplice(@s1, 1, 2);
