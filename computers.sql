-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.

-- Write SQL commands under the prompts below, and run the file to get results.

-- In case there is already a computers table, drop it

-- Create a computers table
-- CREATE TABLE computers (id SERIAL, make VARCHAR(20), model VARCHAR(20), cpu_speed VARCHAR(20), memory_size VARCHAR(20), price INT, release_date TIMESTAMP, photo_url VARCHAR(20), storage_amount VARCHAR(20), number_usb_ports INT, number_firewire_ports INT, number_thunderbolt_ports INT);

-- The table should have id, make, model, cpu_speed, memory_size,
--  price, release_date, photo_url, storage_amount, number_usb_ports,
--  number_firewire_ports, number_thunderbolt_ports
-- CREATE TABLE computers (id SERIAL, make VARCHAR(20), model VARCHAR(20), cpu_speed VARCHAR(20), memory_size VARCHAR(20), price INT, release_date TIMESTAMP, photo_url VARCHAR(20), storage_amount VARCHAR(20), number_usb_ports INT, number_firewire_ports INT, number_thunderbolt_ports INT);
--      Table "public.computers"
--           Column          |            Type             | Collation | Nullable |                Default
-- --------------------------+-----------------------------+-----------+----------+---------------------------------------
--  id                       | integer                     |           | not null | nextval('computers_id_seq'::regclass)
--  make                     | character varying(20)       |           |          |
--  model                    | text                        |           |          |
--  cpu_speed                | character varying(20)       |           |          |
--  memory_size              | character varying(20)       |           |          |
--  price                    | integer                     |           |          |
--  release_date             | timestamp without time zone |           |          |
--  photo_url                | character varying(20)       |           |          |
--  storage_amount           | character varying(20)       |           |          |
--  number_usb_ports         | integer                     |           |          |
--  number_firewire_ports    | integer                     |           |          |
--  number_thunderbolt_ports | integer                     |           |          |



-- Insert 4 computers into the computers table
--  INSERT INTO computers (make, model, memory_size, price, storage_amount, number_usb_ports, number_thunderbolt_ports) VALUES ('Apple iMac All-n-One', 'MR7E3LL/A', '16GB', '1399', '512GB', '2', '2'
-- );
-- sql_lab=# ALTER TABLE computers ALTER COLUMN make TYPE text;
-- ALTER TABLE
-- sql_lab=# INSERT INTO computers (make, model, cpu_speed, memory_size, price, storage_amount, number_usb_ports, number_thunderbolt_ports) VALUES ('HP - Envy 2-in-1 16" 2K Touch-Screen Laptop', '16-ac0023dx
-- /9S1R6UA#ABA', '6400MHz', '16GB', '800', '1024GB', '2', '1');
-- sql_lab=# INSERT INTO computers (make, model, cpu_speed, memory_size, price, storage_amount, number_usb_ports, number_thunderbolt_ports) VALUES ('Dell - XPS 16 16.3" Touch Screen Laptop UHD+', 'XPS9640-9158SLV-PUS', '3733MHz', '32GB', '2300', '1000GB', '0', '3');
-- sql_lab=# INSERT INTO computers (make, model, cpu_speed, memory_size, price, storage_amount, number_usb_ports, number_thunderbolt_ports) VALUES ('HP-OmniStudio X PC-27" 4K UHD All-in-One', '27-CS1014', '8533MHz', '16GB', '1510', '1024GB', '6', '0');

-- Select all entries from the computers table
-- sql_lab=# SELECT * FROM computers;
--  id |                     make                     |          model          | cpu_speed | memory_size | price | release_date | photo_url | storage_amount | number_usb_ports | number_firewire_ports | number_thunderbolt_ports
-- ----+----------------------------------------------+-------------------------+-----------+-------------+-------+--------------+-----------+----------------+------------------+-----------------------+--------------------------
--   2 | Apple iMac All-n-One                         | MR7E3LL/A               |           | 16GB        |  1399 |              |           | 512GB          |                2 |                       |                        2
--   3 | HP - Envy 2-in-1 16" 2K Touch-Screen Laptop  | 16-ac0023dx/9S1R6UA#ABA | 6400MHz   | 16GB        |   800 |              |           | 1024GB         |                2 |                       |                        1
--   4 | Dell - XPS 16 16.3" Touch Screen Laptop UHD+ | XPS9640-9158SLV-PUS     | 3733MHz   | 32GB        |  2300 |              |           | 1000GB         |                0 |                       |                        3
--   5 | HP-OmniStudio X PC-27" 4K UHD All-in-One     | 27-CS1014               | 8533MHz   | 16GB        |  1510 |              |           | 1024GB         |                6 |                       |                        0

-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below

-- Alter the computers_models, removing the storage_amount column
-- and add storage_type and storage_size columns
