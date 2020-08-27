SELECT building_id, building_name, height FROM buildings;
SELECT * FROM buildings;
SELECT building_id AS build_id FROM buildings;
SELECT building_id build FROM buildings;

SELECT * FROM buildings WHERE height > 400;

SELECT role AS profession, 
	   years_employed 
  FROM employees 
 WHERE role = 'Engineer'
   AND years_employed > 3;
 

SELECT role AS profession, 
	   name,
	   years_employed,
	   building
FROM employees 
WHERE role = 'Engineer';

SELECT role AS profession 
	   ,years_employed 
	   ,building
FROM employees 
WHERE role = 'Engineer';

-- limit 
SELECT * FROM employees LIMIT 2;

-- offset
SELECT * FROM employees LIMIT 2 OFFSET 3;

-- order by
SELECT * 
  FROM employees 
 ORDER BY years_employed ASC;
 
SELECT * 
  FROM employees 
 ORDER BY years_employed DESC,
 		  building DESC;
		  
SELECT * 
  FROM movies
 ORDER BY director ASC, 
          year DESC;


-- Aggregations

SELECT 10 * years_employed AS years FROM employees;
SELECT MAX(years_employed) FROM employees;
SELECT COUNT(*) FROM employees;

SELECT AVG(years_employed) FROM employees;

SELECT * FROM employees;

SELECT role, 
	   AVG(years_employed) AS avg_years_empl
  FROM employees
 GROUP BY role;


SELECT role, 
	   MAX(years_employed)
  FROM employees
 GROUP BY role;


SELECT role, 
	   building,
	   MAX(years_employed)
  FROM employees
 GROUP BY role, building;


