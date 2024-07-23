create table flint.request_detail
(
    id                       text PRIMARY KEY,
    client_tag               text,
    runtime_configuration    text,
    submission_command       text,
    submission_configuration text,
    received_by              text,
    last_modified            timestamp,
    received_at              timestamp
);
