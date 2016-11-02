package Test::App;
use common::sense;
use Mojo::Base 'Mojolicious';

sub startup {
    my $self = shift;

    my $routes = $self->routes;

    $routes->get('/env')->to(
        cb => sub {
            my $c = shift;
            $c->render(json => { env => $c->req->env, },);
        }
    );
    $routes->get('/headers')->to(
        cb => sub {
            my $c = shift;
            $c->render(
                json => {
                    req_headers => $c->req->headers->to_hash,
                    res_headers => $c->res->headers->to_hash,
                },
            );
        }
    );
}

package main;

use common::sense;
use Data::Dumper;
use Test::More;
use Test::Pretty;
use Test::Deep;

my $class = 'Test::Mojo';
use_ok $class;

my $t = Test::Mojo->new('Test::App');

subtest 'GET /env' => sub {
    $t->get_ok('/env')->status_is(200);
    is_deeply $t->tx->res->json, { env => {}, };
};

subtest 'GET /headers' => sub {
    $t->get_ok('/headers')->status_is(200);
    cmp_deeply $t->tx->res->json,
        {
        'req_headers' => {
            'Accept-Encoding' => 'gzip',
            'Content-Length'  => '0',
            'User-Agent'      => 'Mojolicious (Perl)',
            'Host'            => re('\A127.0.0.1:\d+\z'),
        },
        'res_headers' => { 'Server' => 'Mojolicious (Perl)' }
        };
};

done_testing;
