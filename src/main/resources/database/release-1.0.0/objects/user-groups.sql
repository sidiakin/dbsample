--liquibase formatted sql

--changeset joe:user-groups-1
CREATE SEQUENCE IF NOT EXISTS dbsample.user_groups_sq START 1;

--changeset joe:user-groups-2
CREATE TABLE IF NOT EXISTS dbsample.user_groups
(
    user_group_id UUID                        NOT NULL DEFAULT uuid_generate_v4(),
    user_id      UUID                        NOT NULL,
    group_id      UUID                        NOT NULL,

    created_by   VARCHAR(50)                 NOT NULL DEFAULT 'system',
    created_date TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT current_timestamp,
    constraint user_groups_pk PRIMARY KEY (user_group_id)
);

COMMENT ON TABLE user_groups IS 'Привязка групп к пользователям';
COMMENT ON COLUMN user_groups.user_group_id IS 'Ключ записи';
COMMENT ON COLUMN user_groups.user_id IS 'Ключ пользователя';

COMMENT ON column user_groups.created_by IS 'Логин пользователя, создавшего запись';
COMMENT ON column user_groups.created_date IS 'Дата создания записи';

--changeset joe:user-groups-3
CREATE UNIQUE INDEX idx_user_groups_u1 ON user_groups (user_id, group_id);