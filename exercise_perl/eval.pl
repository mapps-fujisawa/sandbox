use Data::Dumper;
use Try::Tiny;

eval { die 'try die'; };
warn $@;

try {
    die 'hoge';
}
catch {

};
warn $@;

