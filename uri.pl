use common::sense;
use URI;
use Data::Dumper;

my $uri = URI->new('http://example.com/foo/bar/baz?qux=123&hoge=123&fuga=999');
#my $uri = URI->new('/foo/bar/baz?qux=123&hoge=123&fuga=999');
warn $uri->as_string, "\n";
warn defined($uri->authority), "\n";

my %query_hash = $uri->query_form;
delete($query_hash{hoge});
$uri->query_form(%query_hash);

print $uri->as_string, "\n";

