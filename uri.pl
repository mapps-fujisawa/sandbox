use Data::Dumper;
use URI;

my $path = 'hoge';
my $query = '{}';
warn Dumper redirect_mobile_app_uri($path, $query);

sub redirect_mobile_app_uri {
    my ($path, $query) = @_;
    my $scheme = 'surveyon://surveyon.com';

#    $query ||= {};
    $path = '/' . $path if $path =~ /^[^\/]\w/m;

    my $uri = URI->new;
#    $uri->scheme('');
#    $uri->host();
    $uri->path($scheme.$path);
    $uri->query_form($query);

    $uri;
    #create_uri($scheme, $path, $query);
}
