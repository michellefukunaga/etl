CREATE TABLE daily_tele (
    telematics_user_id                char(36)     not null encode zstd,
    user_id                           char(36)     not null encode zstd,
    account_id                        char(36)     not null encode zstd,
    trip_date                         timestamp    encode az64,
    number_of_trips                   int          encode az64,
    distance_per_day                  float        encode zstd,
    had_location_change               boolean      encode zstd,
    had_trip                          boolean      encode zstd,
    app_installed                     boolean      encode zstd,
    test_drive_development_day        int          encode az64
)
  DISTSTYLE key
  DISTKEY (telematics_user_id)
  SORTKEY (telematics_user_id);
