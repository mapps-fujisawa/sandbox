use common::sense;

sub import {
    my $package = caller;
    foreach my $name (qw (filename basename filepath)) {
        no strict 'refs';
        *{ package . "::$name" } = \&$_;
        warn \&$_;

    }
}

#import();
