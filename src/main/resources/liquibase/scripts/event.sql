-- liquibase formatted sql

-- changeset voron:1
CREATE TABLE events (
    id BIGSERIAL PRIMARY KEY,
    chat_id TEXT not null,
    event_text TEXT not null,
    event_date timestamp not null
)

-- changeset voron:2
ALTER TABLE events
ALTER COLUMN chat_id TYPE BIGINT USING chat_id::bigint