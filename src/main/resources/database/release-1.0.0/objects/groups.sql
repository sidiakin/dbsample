--liquibase formatted sql

--changeset joe:groups-1
CREATE TABLE IF NOT EXISTS dbsample.groups
(
    group_id               UUID                        NOT NULL default uuid_generate_v4(),
    group_name             VARCHAR(50)                 NOT NULL,
    group_description      VARCHAR(500)                NOT NULL,
    active                boolean                     not null default true,

    created_by            VARCHAR(50)                 NOT NULL DEFAULT 'system',
    created_date          TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT current_timestamp,
    last_updated_by       VARCHAR(50)                 NOT NULL DEFAULT 'system',
    last_updated_date     TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT current_timestamp,
    object_version_number INTEGER                     NOT NULL DEFAULT 0,
    constraint groups_pk PRIMARY KEY (group_id)
);

COMMENT ON TABLE dbsample.groups IS 'Справочник ролей';
COMMENT ON COLUMN dbsample.groups.group_id IS 'Уникальный идентификатор';
COMMENT ON COLUMN dbsample.groups.group_name IS 'Название';
COMMENT ON COLUMN dbsample.groups.group_description IS 'Описание';
COMMENT ON COLUMN dbsample.groups.active IS 'Флаг активности';

COMMENT ON column dbsample.groups.created_by IS 'Логин пользователя, создавшего запись';
COMMENT ON column dbsample.groups.created_date IS 'Дата создания записи';
COMMENT ON column dbsample.groups.last_updated_by IS 'Логин пользователя, изменившего запись';
COMMENT ON column dbsample.groups.last_updated_date IS 'Дата последнего обновления записи';
COMMENT ON column dbsample.groups.object_version_number IS 'Номер версии записи в БД';

--changeset joe:groups-2
CREATE UNIQUE INDEX idx_groups_u1 ON groups (group_name);
