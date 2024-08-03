--liquibase formatted sql

--changeSet joe:groups-data-01
INSERT INTO dbsample.groups(group_name, group_description)
VALUES ('GROUP_ADMIN', 'Администраторы');
INSERT INTO dbsample.groups(group_name, group_description)
VALUES ('GROUP_USER', 'Пользователи');
