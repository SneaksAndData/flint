create table flint.request_state
(
    id                 text PRIMARY KEY,
    processing_cluster text,
    client_tag         text,
    lifecycle_stage    text,
    last_modified      timestamp,
    message_id         text,
    receipt            text,
    try_number         int,
);

create custom index rs_client_tag on beast.request_state (client_tag)
    using 'StorageAttachedIndex'
    with options = {'case_sensitive': 'false', 'normalize': 'true', 'ascii': 'true'};

create custom index rs_lifecycle_stage on beast.request_state (lifecycle_stage)
    using 'StorageAttachedIndex'
    with options = {'case_sensitive': 'false', 'normalize': 'true', 'ascii': 'true'};

create custom index rs_processing_cluster on beast.request_state (processing_cluster)
    using 'StorageAttachedIndex'
    with options = {'case_sensitive': 'false', 'normalize': 'true', 'ascii': 'true'};
