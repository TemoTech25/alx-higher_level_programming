-- List all records from 'second_table', displaying 'score' and 'name', ordered by 'score' (descending), excluding rows without a 'name' value
SELECT score, name FROM second_table WHERE name IS NOT NULL ORDER BY score DESC;
