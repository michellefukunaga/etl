CREATE TABLE telematics_eligibility (
    account_id                        char(36)     not null encode zstd,
    telematics_user_id                char(36)     not null encode zstd,
    user_id                           char(36)     not null encode zstd,
    first_trip_recorded_timestamp     timestamp    encode az64,
    last_trip_timestamp               timestamp    encode az64,
    underwriting_decision_timestamp   timestamp    encode az64,
    test_drive_start_date             timestamp    encode az64,
    test_drive_end_date               timestamp    encode az64,
    test_drive_development_days       int          encode az64,
    policy_bound_timestamp            timestamp    encode az64,
    final_bind_timestamp              timestamp    encode az64,
    profile_created_timestamp         timestamp    encode az64,
    relevant_eligible_date            timestamp    encode az64,
    relevant_ptnu                     boolean      encode zstd,
    eligible_flag                     varchar(32)  encode zstd
)
  DISTSTYLE key
  DISTKEY (telematics_user_id)
  SORTKEY (telematics_user_id);
