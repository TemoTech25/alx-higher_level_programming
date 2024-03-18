-- List the number of records with the same score in 'second_table', displaying 'score' and 'number', sorted by 'number' (descending)
SELECT score, COUNT(*) AS number FROM second_table GROUP BY score ORDER BY number DESC;

