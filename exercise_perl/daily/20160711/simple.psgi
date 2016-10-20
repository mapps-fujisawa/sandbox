#use common::sense;
#use Cwd qw(abs_path);
#use File::Basename qw(dirname);
#use lib abs_path(dirname(__FILE__) . '/../lib');

#use Domi::ENV;

umask 0002;

sub {
    my $env = shift;

    # アプリケーションの処理
    return [ 200, [ 'Content-Type' => 'text/plain' ], ["Hello World\n"] ];
};

#my $dir = dirname(__FILE__);
#do "${dir}/surveyon_partners-startup.pl";
#
#require Mojolicious::Commands;
#use Domi::App::PartnersAPI::V1;
#use Domi::App::PartnersAPI::V1_1;
#use DomiX::Plack::Middleware::RequestHeader;
#use DomiX::Plack::Middleware::ResponseHeader;
#use Plack::Builder;
#
#builder {
#    enable '+DomiX::Plack::Middleware::RequestHeader';
#    enable_if { $_[0]->{REMOTE_ADDR} eq '127.0.0.1' } 'ReverseProxy';
#    enable '+DomiX::Plack::Middleware::ResponseHeader';
#
#    mount '/api/v1'   => Domi::App::PartnersAPI::V1->start_app;
#    mount '/api/v1_1' => Domi::App::PartnersAPI::V1_1->start_app;
#    mount '/fs_api/v1' => Mojolicious::Commands->start_app('Domi::App::ForSurveyAPI::V1::Partners');
#    mount '/resource' => Mojolicious::Commands->start_app('Domi::App::Partners');
#};
