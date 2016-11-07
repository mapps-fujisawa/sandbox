use common::sense;
use FormValidator::Lite;

my $v = $c->validator;    #FormValidator::Lite->new($c->req);

$v->check(
    id         => [ 'REQUIRED', 'INT' ],
    start_date => [ 'REQUIRED', 'DATE' ],
    id         => ['DATE'],

);

if ( $v->is_valid ) {
    my $row = $c->db->single(i);
}
