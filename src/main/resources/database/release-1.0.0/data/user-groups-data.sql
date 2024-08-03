--liquibase formatted sql

--changeSet joe:user-groups-data-01
INSERT INTO dbsample.user_groups(user_id, group_id)
SELECT user_id, (SELECT group_id FROM dbsample.groups WHERE group_name = 'GROUP_ADMIN')
FROM dbsample.users
ON CONFLICT DO NOTHING;