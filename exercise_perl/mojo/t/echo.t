use Test::More;
use Test::Mojo;

# アプリケーションを含む
use FindBin;
require "$FindBin::Bin/../lib/echo.pl";

# エコーWebサービスの試験
my $t = Test::Mojo->new;
$t->websocket_ok('/echo')->send_ok('Hello Mojo!')->message_ok->message_is('echo: Hello Mojo!')
    ->finish_ok;

# JSON Webサービスの試験
$t->websocket_ok('/echo.json')->send_ok({ json => { test => [ 1, 2, 3 ] } })
    ->message_ok->json_message_is('/test', [ 1, 2, 3 ])->finish_ok;

done_testing();
