--liquibase formatted sql

--changeSet joe:permissions-data-01
INSERT INTO dbsample.permissions(permission_name, permission_description)
VALUES ('PRM_VIEW_SELF_DATA', 'Чтение данных текущего пользователя');

INSERT INTO dbsample.permissions(permission_name, permission_description)
VALUES ('PRM_CHANGE_SELF_DATA', 'Изменение данных текущего пользователя');

INSERT INTO dbsample.permissions(permission_name, permission_description)
VALUES ('PRM_CHANGE_SELF_PASSWORD', 'Изменение пароля текущего пользователя');

INSERT INTO dbsample.permissions(permission_name, permission_description)
VALUES ('PRM_DELETE_SELF_ACCOUNT', 'Удаление аккаунта текущего пользователя');

INSERT INTO dbsample.permissions(permission_name, permission_description)
VALUES ('PRM_VIEW_ANY_DATA', 'Чтение данных любого пользователя');

INSERT INTO dbsample.permissions(permission_name, permission_description)
VALUES ('PRM_CHANGE_ANY_DATA', 'Изменение данных любого пользователя');

INSERT INTO dbsample.permissions(permission_name, permission_description)
VALUES ('PRM_CHANGE_ANY_PASSWORD', 'Изменение пароля любого пользователя');

INSERT INTO dbsample.permissions(permission_name, permission_description)
VALUES ('PRM_DELETE_ANY_ACCOUNT', 'Удаление аккаунта любого пользователя');