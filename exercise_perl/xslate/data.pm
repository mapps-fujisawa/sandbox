package HelloMojo;
use strict;
use warnings;
use Mojolicious::Lite;

# バージョン確認のためuseしているが、
# 通常はplubin()で自動的にロードされる。
use MojoX::Renderer::Xslate;

plugin 'xslate_renderer';

get '/' => 'index';

app->start;

__DATA__
@@ index.html.tx
<html>
<body>
Hello, <: $c.req.param('lang') // "Xslate" :> world!
</body>
</html>
