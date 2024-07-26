--liquibase formatted sql

--changeSet joe:users-data-1
INSERT INTO users (email, password_hash, first_name, last_name, middle_name, birthday, avatar_url, active)
VALUES ('gauss@goettingen.deu', '$2a$10$VUqrcPxSpEhmYjIZ5zbygu3bEf1KHw8A8Vm4agZwh061SVFGr2OUG', 'Карл', 'Гаусс', 'Фридрих', '1777-04-30', null, true);