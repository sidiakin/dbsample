--liquibase formatted sql

--changeset joe:extensions-1
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";