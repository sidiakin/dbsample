--liquibase formatted sql

--changeSet joe:users-data-1
INSERT INTO users (email, password_hash, first_name, last_name, middle_name, birthday, avatar_url, active)
VALUES ('gauss@goettingen.deu', '{bcrypt}$2a$12$xjOchVgQPOmQ7Z9UgcWrjOFdKFv2ngUHueAvjnggw2PzwIzhXf956', 'Карл', 'Гаусс', 'Фридрих', '1777-04-30', null, true);