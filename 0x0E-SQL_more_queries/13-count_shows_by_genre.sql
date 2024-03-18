-- List all genres with the number of shows linked to each, sorted by the number of shows linked in descending order
SELECT 
    tv_show_genres.genre_id AS genre, 
    COUNT(tv_show_genres.show_id) AS number_of_shows
FROM 
    tv_show_genres
GROUP BY 
    tv_show_genres.genre_id
HAVING 
    COUNT(tv_show_genres.show_id) > 0
ORDER BY 
    number_of_shows DESC;
