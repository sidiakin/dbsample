
--liquibase formatted sql

--changeset joe:permissions-1
CREATE TABLE IF NOT EXISTS dbsample.permissions
(
    permission_id          UUID                        NOT NULL default uuid_generate_v4(),
    permission_name        VARCHAR(100)                NOT NULL,
    permission_description VARCHAR(500)                NOT NULL,
    active                boolean                     not null default true,

    created_by            VARCHAR(50)                 NOT NULL DEFAULT 'system',
    created_date          TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT current_timestamp,
    last_updated_by       VARCHAR(50)                 NOT NULL DEFAULT 'system',
    last_updated_date     TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT current_timestamp,
    object_version_number INTEGER                     NOT NULL DEFAULT 0,
    constraint permissions_pk PRIMARY KEY (permission_id)
);

COMMENT ON TABLE permissions IS 'Справочник разрешений';
COMMENT ON COLUMN permissions.permission_id IS 'Идентификатор';
COMMENT ON COLUMN permissions.permission_name IS 'Название';
COMMENT ON COLUMN permissions.permission_description IS 'Описание';
COMMENT ON COLUMN permissions.active IS 'Флаг активности';

COMMENT ON column permissions.created_by IS 'Логин пользователя, создавшего запись';
COMMENT ON column permissions.created_date IS 'Дата создания записи';
COMMENT ON column permissions.last_updated_by IS 'Логин пользователя, изменившего запись';
COMMENT ON column permissions.last_updated_date IS 'Дата последнего обновления записи';
COMMENT ON column permissions.object_version_number IS 'Номер версии записи в БД';

--changeset joe:permissions-2
CREATE UNIQUE INDEX idx_permissions_u1 ON permissions (permission_name);

