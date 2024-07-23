create table flint.request_log
(
    id                 text PRIMARY KEY,
    job_log_compressed blob,
);

alter table beast.request_log
            with default_time_to_live = 2592000;
