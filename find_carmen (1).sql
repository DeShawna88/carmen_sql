-- TEST COMMAND AND SAMPLE OUTPUT
-- Record your query (or queries, some clues require more than one) below the clue, then comment out the output below it
-- use two `-` to comment at the start of a line, or highlight the text and press `⌘/` to toggle comments
-- EXAMPLE: SELECT ALL FROM THE TABLE COUNTRY AND LIMIT IT TO ONE ENTRY

SELECT * FROM COUNTRY LIMIT 1;

--  -[ RECORD 1 ]--+--------------------------
-- code           | AFG
-- name           | Afghanistan
-- continent      | Asia
-- region         | Southern and Central Asia
-- surfacearea    | 652090
-- indepyear      | 1919
-- population     | 22720000
-- lifeexpectancy | 45.9
-- gnp            | 5976.00
-- gnpold         |
-- localname      | Afganistan/Afqanestan
-- governmentform | Islamic Emirate
-- headofstate    | Mohammad Omar
-- capital        | 1
-- code2          | AF


-- Clue #1: We recently got word that someone fitting Carmen Sandiego's description has been traveling through Southern Europe. She's most likely traveling someplace where she won't be noticed, so find the least populated country in Southern Europe, and we'll start looking for her there.
-- carmen=# SELECT MIN(country.population), country.name FROM country WHERE country.region LIKE
--  'Southern Europe' GROUP BY country.name;
--    min    |             name
-- ----------+-------------------------------
--     78000 | Andorra
--   3401200 | Albania
--  39441700 | Spain
--   4473000 | Croatia
--  57680000 | Italy
--      1000 | Holy See (Vatican City State)  *** LEAST POPULATED CITY ***
--   1987800 | Slovenia
--  10545700 | Greece
--  10640000 | Yugoslavia
--   2024000 | Macedonia
--     27000 | San Marino
--   3972000 | Bosnia and Herzegovina
--     25000 | Gibraltar
--   9997600 | Portugal
--    380200 | Malta

-- Clue #2: Now that we're here, we have insight that Carmen was seen attending language classes in this country's officially recognized language. Check our databases and find out what language is spoken in this country, so we can call in a translator to work with you.
-- SELECT country.code FROM country WHERE country.name = 'Holy See (Vatican City State
-- )';
--  code
-- ------
--  VAT
-- SELECT language FROM countrylanguage WHERE countrylanguage.countrycode = 'VAT';
--  language
-- ----------
--  Italian


-- Clue #3: We have new news on the classes Carmen attended – our gumshoes tell us she's moved on to a different country, a country where people speak only the language she was learning. Find out which nearby country speaks nothing but that language.
-- SELECT * FROM countrylanguage WHERE countrylanguage.language = 'Italian';
--  countrycode | language | isofficial | percentage
-- -------------+----------+------------+------------
--  ITA         | Italian  | t          |       94.1
--  SMR         | Italian  | t          |        100  *** The answer is SMR ***
--  VAT         | Italian  | t          |          0
--  ARG         | Italian  | f          |        1.7
--  AUS         | Italian  | f          |        2.2
--  LIE         | Italian  | f          |        2.5
--  BEL         | Italian  | f          |        2.4
--  BRA         | Italian  | f          |        0.4
--  LUX         | Italian  | f          |        4.6
--  MCO         | Italian  | f          |       16.1
--  CHE         | Italian  | t          |        7.7
--  CAN         | Italian  | f          |        1.7
--  FRA         | Italian  | f          |        0.4
--  DEU         | Italian  | f          |        0.7
--  USA         | Italian  | f          |        0.6
--  SELECT name FROM country WHERE country.code = 'SMR';
--     name
-- ------------
--  San Marino


-- Clue #4: We're booking the first flight out – maybe we've actually got a chance to catch her this time. There are only two cities she could be flying to in the country. One is named the same as the country – that would be too obvious. We're following our gut on this one; find out what other city in that country she might be flying to.
--  SELECT name FROM city WHERE city.countrycode = 'SMR';
--     name
-- ------------
--  Serravalle   *** The answer is Serravalle ***
--  San Marino





-- Clue #5: Oh no, she pulled a switch – there are two cities with very similar names, but in totally different parts of the globe! She's headed to South America as we speak; go find a city whose name is like the one we were headed to, but doesn't end the same. Find out the city, and do another search for what country it's in. Hurry!
-- SELECT name, countrycode FROM city WHERE city.name LIKE '%Serra%';
--          name         | countrycode
-- ----------------------+-------------
--  Serra                | BRA   *** The answer is Serra ***
--  Taboï¿½o da Serra    | BRA
--  Itapecerica da Serra | BRA
--  Serravalle           | SMR
--  SELECT name FROM country WHERE country.code = 'BRA';
--   name
-- --------
--  Brazil    *** In Barzil ***

-- Clue #6: We're close! Our South American agent says she just got a taxi at the airport, and is headed towards the capital! Look up the country's capital, and get there pronto! Send us the name of where you're headed and we'll follow right behind you!
--  SELECT name, capital FROM country WHERE country.code = 'BRA';
--   name  | capital
-- --------+---------
--  Brazil |     211
--  SELECT name FROM city WHERE city.id = 211;
--     name
-- ------------
--  Brasï¿½lia


-- Clue #7: She knows we're on to her – her taxi dropped her off at the international airport, and she beat us to the boarding gates. We have one chance to catch her, we just have to know where she's heading and beat her to the landing dock.

-- Lucky for us, she's getting cocky. She left us a note, and I'm sure she thinks she's very clever, but if we can crack it, we can finally put her where she belongs – behind bars.

-- Our playdate of late has been unusually fun –
-- As an agent, I'll say, you've been a joy to outrun.
-- And while the food here is great, and the people – so nice!
-- I need a little more sunshine with my slice of life.
-- So I'm off to add one to the population I find
-- In a city of ninety-one thousand and now, eighty five.


-- We're counting on you, gumshoe. Find out where she's headed, send us the info, and we'll be sure to meet her at the gates with bells on.
-- SELECT * FROM city WHERE city.population = 91084;
--   id  |     name     | countrycode |  district  | population
-- ------+--------------+-------------+------------+------------
--  4060 | Santa Monica | USA         | California |      91084    *** The answer is Santa Monica, CA ***

