#!/usr/bin/env perl
use Mojolicious::Lite;

get '/foo' => sub {
    my $c = shift;
    my $user = $c->param('user');
    $c->render(text => 'Hello '. $user .'!');
    };

app->start;
