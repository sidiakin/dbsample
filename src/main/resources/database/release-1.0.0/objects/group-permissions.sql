--liquibase formatted sql

--changeset joe:group-permissions-1
CREATE TABLE IF NOT EXISTS dbsample.group_permissions
(
    group_permission_id UUID                        NOT NULL DEFAULT uuid_generate_v4(),
    group_id           UUID                        NOT NULL,
    permission_id      UUID                        NOT NULL,

    created_by        VARCHAR(50)                 NOT NULL DEFAULT 'system',
    created_date      TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT current_timestamp,
    constraint group_permissions_pk PRIMARY KEY (group_permission_id)
);

COMMENT ON TABLE dbsample.group_permissions IS 'Привязка разрешений к группам';
COMMENT ON COLUMN dbsample.group_permissions.group_permission_id IS 'Идентификатор';
COMMENT ON COLUMN dbsample.group_permissions.group_id IS 'Ключ роли';
COMMENT ON COLUMN dbsample.group_permissions.permission_id IS 'Ключ разрешения';

COMMENT ON column dbsample.group_permissions.created_by IS 'Логин пользователя, создавшего запись';
COMMENT ON column dbsample.group_permissions.created_date IS 'Дата создания записи';

--changeset joe:group-permissions-2
CREATE UNIQUE INDEX idx_group_permissions_u1 ON dbsample.group_permissions (group_id, permission_id);

