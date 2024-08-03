--liquibase formatted sql

--changeset joe:users-1
CREATE TABLE IF NOT EXISTS users
(
    user_id               UUID                        NOT NULL DEFAULT uuid_generate_v4(),
    email                 VARCHAR(100)                NOT NULL,
    password_hash         VARCHAR(500),
    first_name            varchar(100)                NOT NULL,
    last_name             varchar(100)                NOT NULL,
    middle_name           varchar(100),
    birthday              date,
    avatar_url            varchar(255),
    active                boolean                     not null default false,

    created_by            VARCHAR(50)                 NOT NULL DEFAULT 'system',
    created_date          TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT current_timestamp,
    last_updated_by       VARCHAR(50)                 NOT NULL DEFAULT 'system',
    last_updated_date     TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT current_timestamp,
    object_version_number INTEGER                     NOT NULL DEFAULT 0,
    constraint users_pk PRIMARY KEY (user_id)
);

COMMENT ON TABLE users IS 'Пользователи';
COMMENT ON COLUMN users.user_id IS 'Идентификатор';
COMMENT ON COLUMN users.email IS 'Логин';
COMMENT ON COLUMN users.password_hash IS 'Хэш пароля';
COMMENT ON COLUMN users.first_name IS 'Начало действия учетной записи';
COMMENT ON COLUMN users.last_name IS 'Окончание действия учетной записи';
COMMENT ON COLUMN users.middle_name IS 'Статус пользователя, активен или неактивен';
COMMENT ON COLUMN users.birthday IS 'Пользователь, создавший текущую запись';
COMMENT ON COLUMN users.avatar_url IS 'Аватар';

COMMENT ON column users.created_by IS 'Логин пользователя, создавшего запись';
COMMENT ON column users.created_date IS 'Дата создания записи';
COMMENT ON column users.last_updated_by IS 'Логин пользователя, изменившего запись';
COMMENT ON column users.last_updated_date IS 'Дата последнего обновления записи';
COMMENT ON column users.object_version_number IS 'Номер версии записи в БД';

--changeset joe:users-2
CREATE UNIQUE INDEX IF NOT EXISTS idx_user_u1 ON users (email);