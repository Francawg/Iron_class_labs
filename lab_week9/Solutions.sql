--Pegar coluna title_id dar um inner join para poder dar match com titles
SELECT * FROM titleauthor;

-- Pegar Coluna title
SELECT (title), title FROM titles
GROUP BY title;

-- Pegar Coluna pub_name
SELECT * FROM publishers;

-- Pegar as 3 primeiras colunas
SELECT * FROM authors;


-- Unindo 5 colunas com Inner Join de 3 tabelas diferentes


SELECT A.au_id as Author_id,
       A.au_lname as Last_Name,
	   A.au_fname as First_Name,
	   T.title,
	   P.pub_name as publisher
  FROM authors AS A 
 	   Inner JOIN 
	   titleauthor AS TA 
 	   ON A.au_id = TA.au_id
	   INNER JOIN
	   titles as T 
	   on TA.title_id = T.title_id
	   INNER JOIN
	   publishers as P
	   on P.pub_id = T.pub_id
	   ORDER BY last_name;



-- Contando quantidade de titulos de cada autor
SELECT A.au_id as Author_id,
       A.au_lname as Last_Name,
	   A.au_fname as First_Name,
	   P.pub_name as publisher,
	   COUNT(T.title) AS Count_title
  FROM authors AS A 
 	   INNER JOIN 
	   titleauthor AS TA 
 	ON A.au_id = TA.au_id
	   INNER JOIN
	   titles as T 
	ON TA.title_id = T.title_id
	   INNER JOIN
	   publishers as P
	ON P.pub_id = T.pub_id
 GROUP BY A.au_id ,
          A.au_lname ,
	      A.au_fname ,
	      P.pub_name
 ORDER BY count_title DESC;