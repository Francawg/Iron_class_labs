CREATE TABLE avg_years_buildings AS 
SELECT building, 
	   AVG(years_employed) AS avg_years
  FROM employees
 GROUP BY building
 ORDER BY avg_years DESC;
 
 SELECT * FROM avg_years_buildings;
 
 -- joins: bring information from another table
 
SELECT * FROM movies;

SELECT * 
  FROM movies AS A
  	   LEFT JOIN 
	   movie_info AS B
	ON A.id = B.movie_id;
 
 -- CASE WHEN
 
 SELECT A.id,
 		A.title,
		A.director,
		A.year,
		A.length_minutes,
		B.rating * 100 AS rating_100,
		CASE WHEN B.rating > 8 THEN 1 ELSE 0 END AS oscar_candidate,
		CASE 
			 WHEN A.year > 1990 AND A.year <= 2000 THEN '90s'
			 WHEN A.year > 2000 AND A.year <= 2010 THEN '00s'
			 ELSE '10s'
		 END AS decades			 
  FROM movies A
  	   LEFT JOIN 
	   movie_info B
	ON A.id = B.movie_id;
	
-- subquery
SELECT A.id,
 		A.title,
		A.director,
		A.year,
		A.length_minutes,
		B.rating * 100 AS rating_100,
		CASE WHEN B.rating > 8 THEN 1 ELSE 0 END AS oscar_candidate,
		CASE 
			 WHEN A.year > 1990 AND A.year <= 2000 THEN '90s'
			 WHEN A.year > 2000 AND A.year <= 2010 THEN '00s'
			 ELSE '10s'
		 END AS decades			 
  FROM (SELECT * FROM movies WHERE year > 2000) A
  	   LEFT JOIN 
	   (SELECT * FROM movie_info WHERE rating > 8) B
	ON A.id = B.movie_id;
 
 