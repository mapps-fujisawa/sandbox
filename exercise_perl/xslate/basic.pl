use Text::Xslate;

my $tx = Text::Xslate->new();
my $template = << 'TMPL';
: for $data -> $item {
    <: $item :>
: }
TMPL

my %vars = (
    data => [qw ( Apple Banana Pear )],
    );

print $tx->render_string($template, \%vars);
