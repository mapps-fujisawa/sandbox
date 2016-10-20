use Data::Dumper;

our (%Cache);
warn Dumper \%Cache;

warn Dumper $Cache{'Exporter'};

$Cache{'Exporter'} ||= {};
warn Dumper $Cache{'Exporter'};



