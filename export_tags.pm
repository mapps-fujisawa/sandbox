package Navigate::SeatOfPants;
use Exporter qw (import);

our @EXPORT    = qw(guess_direction_toward);
our @EXPORT_OK = qw (
  get_north_from_professor
  according_to_GPS
  ask_the_skipper_about
);

our %EXPORT_TAGS = (
    all        => [ @EXPORT, @EXPORT_OK ],
    gps        => [qw( according_to_GPS )],
    directions => [
        qw (
          get_north_from_professor
          according_to_GPS
          guess_direction_toward
          ask_the_skipper_about
          )
    ],
);

1;

