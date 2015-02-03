﻿-- IS607 | Data ACQUISITION AND MANAGEMENT | ASSIGNMENT No. 1
-- James Hamski | james.hamski@spsmail.cuny.edu

-- 1. what airport is furthest away?
SELECT *
FROM Planes;

-- 2. What are the different numbers of engines in the planes table? For each number of engines, 
-- which aircraft have the most number of seats?

SELECT 
DISTINCT
engines
FROM Planes


-- 3. What weather conditions are associated with New York City departure delays?


-- 4. Are older planes more likely to be delayed?



-- 5. Ask (and if possible answer) a question that also requires joining information from two or more tables in the
-- flights database, and/or assumes that additional information can be collected in advance of answering your question.