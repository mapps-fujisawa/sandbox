package YourModule;
require Exporter;
use Data::Dumper;

@ISA = qw(Exporter);
warn Dumper @ISA;

@EXPORT_OK = qw(munge frobnicate);
warn Dumper @EXPORT_OK;

sub frobnicate{
    warn "called frobnicate";
}
