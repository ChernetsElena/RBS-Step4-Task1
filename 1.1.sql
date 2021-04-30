CREATE SCHEMA partition;

CREATE TABLE partition.t_employees (
    pk_id serial,
    c_lastname varchar,
    c_firstname varchar,
    c_middlename varchar,
    c_salary money,
    c_email varchar,
    c_position varchar
);

CREATE TABLE partition.t_clients (
    pk_id serial,
    c_lastname varchar,
    c_firstname varchar,
    c_middlename varchar,
    c_email varchar
);

CREATE SCHEMA auth;

CREATE TABLE auth.t_user (
    pk_id serial,
    c_login varchar,
    c_password bytea,
    c_last_in timestamp
);