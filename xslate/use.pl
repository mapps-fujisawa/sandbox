use Text::Xslate;
my $tx       = Text::Xslate->new();
my $template = 'Hello, <: $lang :> world!';

my $result = $tx->render_string( $template, { lang => 'Template' }, );

print $result;
# => 'Hello, Template world!'
