alter table uuid add constraint uk_uuid_barcode_idx UNIQUE (latest_barcode_id);