--liquibase formatted sql

--changeSet joe:users-dev-data-1
INSERT INTO users (email, password_hash, first_name, last_name, middle_name, birthday, avatar_url, active)
VALUES ('lagrange@unito.ita', '{bcrypt}$2a$12$Mp2WKtUZhaHGrQWK.ZmYAufBAUd.EZZD1LkxpuAnIZ6U8isAfoVmq', 'Жозеф', 'Лагранж', 'Луи', '1736-01-25', null, true);