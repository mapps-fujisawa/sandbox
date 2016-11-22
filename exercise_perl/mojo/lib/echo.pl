use Mojolicious::Lite;

# ブラウザ側のコードによるテンプレート
get '/' => 'index';

# WebSocketのエコーサービス
websocket '/echo' => sub {
    my $c = shift;

    # 接続された
    $c->app->log->debug('WebSocket opened');

    # 接続のために少しだけインアクティビティタイムアウトを増やす
    $c->inactivity_timeout(300);

    # やってきたメッセージ
    $c->on(
        message => sub {
            my ($c, $msg) = @_;
            $c->send("echo: $msg");
        }
    );

    # 接続が閉じられた
    $c->on(
        finish => sub {
            my ($c, $code, $reason) = @_;
            $c->app->log->debug("WebSocket closed with status $code");
        }
    );
};

app->start;
__DATA__

@@ index.html.ep
<!DOCTYPE html>
<html>
  <head><title>Echo</title></head>
  <body>
    <script>
      var ws = new WebSocket('<%= url_for('echo')->to_abs %>');

      // やってきたメッセージ
      ws.onmessage = function(event) {
        document.body.innerHTML += event.data + '<br/>';
      };

      // でていくメッセージ
      window.setInterval(function () { ws.send('Hello Mojo!') }, 1000);
    </script>
  </body>
</html>

