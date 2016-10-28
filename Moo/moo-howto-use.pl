use common::sense;
use MooSample;

my $parts = MooSample->new(rw_parts => 'hogehoge', ro_parts => 'foobar');

warn $parts->rw_parts;
warn $parts->ro_parts;

$parts->rw_parts('hogehoge2');
#$parts->ro_parts('foobar2'); # WARNING HERE

warn $parts->rw_parts;
warn $parts->ro_parts;

