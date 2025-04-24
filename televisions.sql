-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.

-- Write SQL commands under the prompts below, and run the file to get results.

-- In case there is already a televisions table, drop it


-- Create a televisions table


--  The table should have id, model_name, screen_size, resolution,
--  price, release_date, photo_url
-- CREATE TABLE televisions (id Serial, model_name VARCHAR(35), screen_size INT, resolution VARCHAR, price INT, release_date INT, photo_url TEXT);

-- Insert 4 televisions into the tv_models table
-- sql_lab=# INSERT INTO televisions (model_name, screen_size, resolution, price, release_date) VALUES ('Samsung UN70DU7200FXZA', '70', '4K (2160p)', '480', '2024');
-- sql_lab=# INSERT INTO televisions (model_name, screen_size, resolution, price, release_date) VALUES ('LG 86UQ7590PUD', '86', '4K (2160p)', '850', '2022');
-- sql_lab=# INSERT INTO televisions (model_name, screen_size, resolution, price, release_date) VALUES ('Samsung QN85Q60DAFXZA', '85', '4K (2160p)', '1200', '2024');
-- sql_lab=# INSERT INTO televisions (model_name, screen_size, resolution, price, release_date) VALUES ('Sony K65XR80', '65', '4K (2160p)', '1800', '2024');

-- Select all entries from the tv_models table
-- SELECT * FROM televisions;
--  id |       model_name       | screen_size | resolution | price | release_date | photo_url
-- ----+------------------------+-------------+------------+-------+--------------+-----------
--   1 | Samsung UN70DU7200FXZA |          70 | 4K (2160p) |   480 |         2024 |
--   2 | LG 86UQ7590PUD         |          86 | 4K (2160p) |   850 |         2022 |
--   3 | Samsung QN85Q60DAFXZA  |          85 | 4K (2160p) |  1200 |         2024 |
--   4 | Sony K65XR80           |          65 | 4K (2160p) |  1800 |         2024 |

-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below

-- Alter the tv_models, removing the resolution column
--  and add vertical_resolution and horizontal_resolution columns
