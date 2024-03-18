-- Find the id of California in the states table
SELECT id FROM states WHERE name = 'California';

-- Use the id to list all cities in California, sorted by cities.id
SELECT * FROM cities WHERE state_id = (SELECT id FROM states WHERE name = 'California') ORDER BY id ASC;

