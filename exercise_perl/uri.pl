use Data::Dumper;
use URI;
use URI::Escape;

my $path = 'hoge';
my $query = '{}';
#warn Dumper redirect_mobile_app_uri($path, $query);

my $url = '%2Fhome%3Fredirect_mobile_app%3Dsurveyon%253A%252F%252Fsurveyon.com%252Fhome%26utm_campaign%3DNPS_notification_mail%26utm_content%3Dnotification%26utm_medium%3Dmail_button%26utm_source%3Dsurveyon';
warn Dumper extract_url_scheme($url)->{redirect_mobile_app};

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

sub extract_url_scheme {
    my $url = shift;

    my $str = uri_unescape($url);
    my $uri = URI->new($str);
    my %query = $uri->query_form;

    \%query;
    #\%query->{redirect_mobile_app};
}
