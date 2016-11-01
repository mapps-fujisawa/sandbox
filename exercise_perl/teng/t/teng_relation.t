package Test::Model::Schema;
use Teng::Schema::Declare;
table {
    name 'user';
    pk 'id';
    columns qw( id name );
};

table {
    name 'bookmark';
    pk 'id';
    columns qw( id user_id url );
};

package Test::Model;
use common::sense;
use parent 'Teng';

sub new {
    my $class = shift;

    $class->SUPER::new(
        connect_info => [
            'DBI:mysql:database=test;host=127.0.0.1;port=3306', 'testuser',
            'testpass'
        ]
    );
}

1;

package Test::Model::Row::Bookmark;
use parent qw/Teng::Row/;
sub fetch_user {
    my $self = shift;
    $self->handle->single(user => { id => $self->user_id });
}

1;

package main;
use common::sense;
use Data::Dumper;
use feature qw( say );
use Test::More;
use Test::Pretty;

my $handle = Test::Model->new;
isa_ok $handle, 'Test::Model';

# perpare table
#$handle->dbh->do('DROP TABLE IF EXISTS `user`');
#$handle->dbh->do(
#    qq|
#        create table `user` (
#            `id`     integer NOT NULL auto_increment,
#            `name`   varchar(255) NOT NULL,
#            PRIMARY KEY (`id`)
#        ) ENGINE = InnoDB;
#        |
#);
#
#$handle->dbh->do('DROP TABLE IF EXISTS `bookmark`');
#$handle->dbh->do(
#    qq|
#        create table `bookmark` (
#            `id` int(10) NOT NULL auto_increment,
#            `user_id` int(10) NOT NULL,
#            `url` text NOT NULL,
#            INDEX (`user_id`),
#            FOREIGN KEY (`user_id`) REFERENCES user(`id`)
#        ) ENGINE = InnoDB;
#        |
#);
#
#subtest insert => sub {
#    subtest 'Succeed w/ id' => sub {
#        ok $handle->insert( user => { id => 1, name => 'foobar' } );
#    };
#
#    subtest 'Fails w/o id' => sub {
#        ok $handle->insert( user => { name => 'foobar' } )
#          ;    # fail in MySQL 5.7.15
#    };
#};
subtest select => sub {
    my $user = $handle->single( 'user', { id => 1 } );
    is ref $user, 'Test::Model::Row::User';

    my $bm = $handle->single( 'bookmark', { id => 1 } );
    is ref $bm, 'Test::Model::Row::Bookmark';
};

subtest relation => sub {
    my $bm_user = $handle->single( 'bookmark', { id => 1 } );
    say $bm_user->fetch_user->name;
};


done_testing;
