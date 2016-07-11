#/usr/bin;
use Data::Dumper;

my $class = 'File::Basename';
warn Dumper eval "require $class";
