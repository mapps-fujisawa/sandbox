use common::sense;
use Data::Dumper;

my %valid = (
    password            => 'piyopiyo',
    password_algorithm  => 'sha256',
);

warn 'valid dump';

=pod
$VAR1 = 'password';
$VAR2 = 'piyopiyo';
$VAR3 = 'password_algorithm';
$VAR4 = 'sha256';
=cut
warn Dumper %valid;

warn Dumper %valid->{'password'};

warn 'invalid dump';
my %invalid = %valid;

delete $invalid{$_};

warn Dumper %invalid;

warn 'valid array';
my @arr = (1,2,3,4);

warn Dumper @arr[1];

