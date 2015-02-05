-- IS607 | Data ACQUISITION AND MANAGEMENT | ASSIGNMENT No. 1
-- James Hamski | james.hamski@spsmail.cuny.edu

-- 1. what airport is furthest away?
-- Easy way

SELECT
dest,
distance
FROM flights
ORDER BY distance DESC
LIMIT 10;


-- Hard way (not the hardest way)
--Strategy: find the airport nearest to NYC's antipode using the distance forumula. 
-- the error induced by not doing a Great Circle calculation should be negligible if the airport is close to the antipode
-- and there aren't other airports in the area. Luckily, NYC's antipode lies in the Indian Ocean nearest Perth, a very empty part of the world.
-- This answers the question "what airport is the farthest away? [of all airports in database]" While the above only answers "what airport is farthest away that
-- you can reach in a single leg? [limited by airplane range]"

SELECT 
lat, lon,
(-40.513799)-lat AS distLat,
(105.996094)-lon AS distLon,
faa,
name
FROM Airports;


-- 2. What are the different numbers of engines in the planes table? For each number of engines, 
-- which aircraft have the most number of seats?

SELECT 
DISTINCT
engines
FROM Planes

SELECT
DISTINCT 
engines 
FROM Planes

-- 3. What weather conditions are associated with New York City departure delays?

SELECT
dep_delay, 
precip
FROM Flights, Weather
ORDER BY precip DESC
LIMIT 10;


-- 4. Are older planes more likely to be delayed?



-- 5. Ask (and if possible answer) a question that also requires joining information from two or more tables in the
-- flights database, and/or assumes that additional information can be collected in advance of answering your question.