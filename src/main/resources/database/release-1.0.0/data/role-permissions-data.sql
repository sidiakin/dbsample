--liquibase formatted sql

--changeSet joe:group-permissions-data-01
INSERT INTO dbsample.group_permissions(group_id, permission_id)
VALUES ((SELECT group_id FROM dbsample.groups WHERE group_name = 'GROUP_USER'),
        (SELECT permission_id FROM dbsample.permissions WHERE permission_name = 'PRM_VIEW_SELF_DATA'));

INSERT INTO dbsample.group_permissions(group_id, permission_id)
VALUES ((SELECT group_id FROM dbsample.groups WHERE group_name = 'GROUP_USER'),
        (SELECT permission_id FROM dbsample.permissions WHERE permission_name = 'PRM_CHANGE_SELF_DATA'));

INSERT INTO dbsample.group_permissions(group_id, permission_id)
VALUES ((SELECT group_id FROM dbsample.groups WHERE group_name = 'GROUP_USER'),
        (SELECT permission_id FROM dbsample.permissions WHERE permission_name = 'PRM_CHANGE_SELF_PASSWORD'));

INSERT INTO dbsample.group_permissions(group_id, permission_id)
VALUES ((SELECT group_id FROM dbsample.groups WHERE group_name = 'GROUP_USER'),
        (SELECT permission_id FROM dbsample.permissions WHERE permission_name = 'PRM_DELETE_SELF_ACCOUNT'));

INSERT INTO dbsample.group_permissions(group_id, permission_id)
VALUES ((SELECT group_id FROM dbsample.groups WHERE group_name = 'GROUP_ADMIN'),
        (SELECT permission_id FROM dbsample.permissions WHERE permission_name = 'PRM_VIEW_ANY_DATA'));

INSERT INTO dbsample.group_permissions(group_id, permission_id)
VALUES ((SELECT group_id FROM dbsample.groups WHERE group_name = 'GROUP_ADMIN'),
        (SELECT permission_id FROM dbsample.permissions WHERE permission_name = 'PRM_CHANGE_ANY_DATA'));

INSERT INTO dbsample.group_permissions(group_id, permission_id)
VALUES ((SELECT group_id FROM dbsample.groups WHERE group_name = 'GROUP_ADMIN'),
        (SELECT permission_id FROM dbsample.permissions WHERE permission_name = 'PRM_CHANGE_ANY_PASSWORD'));

INSERT INTO dbsample.group_permissions(group_id, permission_id)
VALUES ((SELECT group_id FROM dbsample.groups WHERE group_name = 'GROUP_ADMIN'),
        (SELECT permission_id FROM dbsample.permissions WHERE permission_name = 'PRM_DELETE_ANY_ACCOUNT'));