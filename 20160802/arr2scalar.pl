my @arr = (1,2,3,4,'-');
my $sclr = \@arr;

# array to schalr
warn @$sclr;

my $heavy;
foreach(@arr){
#   warn $_;
    ($heavy = /\W/);
    warn $heavy;
};

