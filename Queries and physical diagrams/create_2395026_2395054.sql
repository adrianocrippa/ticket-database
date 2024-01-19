drop schema if exists showbizz cascade;

create schema showbizz;
set search_path to showbizz;

create table "user"
(
    user_id  integer generated always as identity
        primary key,
    first_name varchar(32) not null
        constraint firstname_check
            check (length((first_name)::text) >= 3),
    last_name varchar(32) not null
        constraint lastname_check
            check (length((last_name)::text) >= 1),
    email    text        not null
        unique
        constraint user_email_check
            check ((length(email) >= 6) AND (email ~~* '%@%.%'::text)),
    address text    not null,
    number  integer not null,
    complement text,
    city    text    not null,
    postal_code varchar(16),
    province    text    not null,
    country text    not null,
    description text
);

create table "newsletter"
(
    nl_id  integer generated always as identity
        primary key,
    opted_in boolean not null,
    user_id     integer
        references "user"
);

create table "sponsor"
(
    sponsor_id  integer generated always as identity
        primary key,
    company_name varchar(32) not null,
    email    text        not null
        unique
        constraint user_email_check
            check ((length(email) >= 6) AND (email ~~* '%@%.%'::text)),
    address text    not null,
    number  integer not null ,
    complement text,
    city    text    not null,
    postal_code varchar(16),
    province    text    not null,
    country text    not null,
    description text
);

create table "category"
(
    category_id  integer generated always as identity
        primary key,
    category_name varchar(32) not null,
    category_subname text,
    age_limit varchar(2)
);

create table "event"
(
    event_id  integer generated always as identity
        primary key,
    event_name varchar(32) not null,
    date_time timestamp not null,
    venue   text not null,
    address text    not null,
    number  integer not null ,
    complement text,
    city    text    not null,
    postal_code varchar(16) not null,
    province    text    not null,
    country text    not null,
    description text,
    category_id     integer
        references "category",
    sponsor_id     integer
        references "sponsor"
);

create table "payment"
(
    payment_id  integer generated always as identity
        primary key,
    payment_method varchar(8),
    ammount decimal(10,2),
    datetime timestamp default now(),
    user_id     integer
        references "user"
);

create table "ticket"
(
    ticket_id  integer generated always as identity
        primary key,
    level varchar(18),
    section varchar(8),
    row varchar(2),
    seat varchar(8),
    description text,
    payment_id     integer
        references "payment",
    event_id    integer
        references "event",
    user_id     integer
        references "user",
    new_owner_id integer
        references "user"
);

create table "wallet"
(
    wallet_id  integer generated always as identity
        primary key,
    wallet_nickname varchar(32),
    user_id     integer
        references "user",
    ticket_id integer
        references "ticket"
);
--
