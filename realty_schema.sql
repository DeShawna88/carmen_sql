-- enter your schema for apartments, offices and storefronts below
drop table if exists apartments;
drop table if exists office;
drop table if exists storefront;

create table apartments(
    id serial primary key,
    apartment_number integer,
    bedrooms integer,
    bathrooms integer,
    address varchar(50),
    tenant varchar(35),
    occupied boolean,
    sq_ft integer,
    price integer
);

create table office(
    id serial primary key,
    office_number integer,
    floors integer,
    sq_ft integer,
    cubicles integer,
    bathrooms integer,
    address varchar(50),
    company varchar(30),
    occupied boolean,
    price integer
);

create table storefront(
    address varchar(50),
    occupied boolean,
    price integer,
    kitchen boolean,
    sq_ft integer,
    owner varchar(30),
    outdoor_seating boolean
);

-- realty_db=# CREATE TABLE apartments (id SERIAL PRIMARY KEY, apartment_number INT, bedrooms INT, bathrooms INT, address VARCHAR(50), tenant VARCHAR(35), occupied BOOL, sq_ft INT, price INT);
--  Table "public.apartments"
--       Column      |         Type          | Collation | Nullable |                Default             
-- ------------------+-----------------------+-----------+----------+----------------------------------------
--  id               | integer               |           | not null | nextval('apartments_id_seq'::regclass)
--  apartment_number | integer               |           |          |
--  bedrooms         | integer               |           |          |
--  bathrooms        | integer               |           |          |
--  address          | character varying(50) |           |          |
--  tenant           | character varying(35) |           |          |
--  occupied         | boolean               |           |          |
--  sq_ft            | integer               |           |          |
--  price            | integer               |           |          |
-- Indexes:
--     "apartments_pkey" PRIMARY KEY, btree (id)

-- realty_db=# CREATE TABLE office (id SERIAL PRIMARY KEY, office_number INT, floors INT, sq_ft INT, cubicles INT, bedrooms INT, address VARCHAR(50), company VARCHAR, occupied BOOL, price INT);
--    Table "public.office"
--     Column     |         Type          | Collation | Nullable |              Default
-- ---------------+-----------------------+-----------+----------+------------------------------------
--  id            | integer               |           | not null | nextval('office_id_seq'::regclass)
--  office_number | integer               |           |          |
--  floors        | integer               |           |          |
--  sq_ft         | integer               |           |          |
--  cubicles      | integer               |           |          |
--  bathrooms     | integer               |           |          |
--  address       | character varying(50) |           |          |
--  company       | character varying     |           |          |
--  occupied      | boolean               |           |          |
--  price         | integer               |           |          |
-- Indexes:
--     "office_pkey" PRIMARY KEY, btree (id)
