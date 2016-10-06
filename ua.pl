use common::sense;
use Data::Dumper;

print is_mobile_user_agent('Android'); # return 1
print is_mobile_user_agent('Linux'); # return undef

sub is_mobile_user_agent {
    my $agent = shift;
    $agent =~ m/(?:Android|iPhone|iPad)/;
}
