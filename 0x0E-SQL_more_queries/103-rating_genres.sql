-- List all genres by their rating sum, sorted by the rating in descending order
SELECT 
    tv_genres.name, 
    SUM(ratings.rating) AS rating_sum
FROM 
    tv_genres
JOIN 
    tv_show_genres ON tv_genres.id = tv_show_genres.genre_id
JOIN 
    ratings ON tv_show_genres.show_id = ratings.show_id
GROUP BY 
    tv_genres.name
ORDER BY 
    rating_sum DESC;
