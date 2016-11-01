package Person;
use strict;
#########################################################
## オブジェクトのコンストラクタ (単純化したバージョン )##
#########################################################
sub new {
    my $self = {};
    $self->{NAME}  = undef;
    $self->{AGE}   = undef;
    $self->{PEERS} = [];
    bless($self);    # 下を見て下さい
    return $self;
}
#####################################################
## オブジェクトごとのデータにアクセスするメソッド  ##
##                                                 ##
## 引数があれば、値をセットする。引数がなければ    ##
## 値を返す。                                      ##
#####################################################

sub name {
    my $self = shift;
    if (@_) { $self->{NAME} = shift }
    return $self->{NAME};
}

sub age {
    my $self = shift;
    if (@_) { $self->{AGE} = shift }
    return $self->{AGE};
}

sub peers {
    my $self = shift;
    if (@_) { @{ $self->{PEERS} } = @_ }
    return @{ $self->{PEERS} };
}
1;

package main;
use Person;
use Data::Dumper;

#
# case1
#
my $him = Person->new();
$him->name('foo');
$him->age(25);
$him->peers("Norbert", "Rhys", "Phineas");
#warn Dumper $him;

#
# case2
#
my $profile = {name => 'bar', age => 43, peers => (123,456,789)};
$him => $profile;

for my $elem (keys %$profile){
    my $val = $profile->{$elem};
    print 'key:' . $elem;
    print 'value:' . $val;
}

1;

=pod
http://perldoc.jp/docs/perl/5.14.1/perltoot.pod
=cut
