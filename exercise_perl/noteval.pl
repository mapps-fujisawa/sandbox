warn(
    not(
        eval {
            die('sudden die');
            return 1;
        }
    )
);

warn(
    not eval { die('sudden die2'); return 2; }
);

#warn eval{1};
print eval{};

warn undef;
warn 1;

