use Try::Tiny;
use Data::Dumper;

my @catch = catch(
    sub {
        warn 3;
    }
);


try(
    sub {
        die;
        warn 1;
    },
 #   catch(
 #       sub {
 #           warn 2;
 #       }
 #   )
    @catch
);

