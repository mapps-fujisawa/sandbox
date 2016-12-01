use common::sense;
use URI;
use Data::Dumper;

#my $uri = URI->new('http://www.example.com/foo/bar/baz?qux=123&hoge=123&fuga=999');
my $uri = URI->new('/foo/bar/baz?hoge=123');
warn $uri->as_string;

#warn defined($uri->authority), "\n";
#warn $uri->authority, "\n";
#warn defined($uri->scheme), "\n";
#warn $uri->scheme, "\n";

#my $hoge = defined($uri->scheme) || defined($uri->authority), "\n";
#warn $hoge;

my %query_hash = $uri->query_form;
delete($query_hash{hoge});

# warning single hash could not be deleted
$uri->query_form(%query_hash);
$uri->query_form();
$uri->query_form(());

# this is hash
#%hash = ( a => 1, b => 2);

# this is hash reference
#$hash_ref = { };

$uri->query_form({ });

warn $uri->as_string;

