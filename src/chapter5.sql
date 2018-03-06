SELECT title_id, pub_id, price * ytd_sales AS Income, price FROM titles WHERE TYPE IN ('business', 'psychology');
SELECT title_id, pub_id, price * ytd_sales AS Income, price FROM titles WHERE TYPE IN ('business', 'psychology') ORDER BY price DESC;
SELECT title_id, pub_id, price * ytd_sales AS Income, price FROM titles WHERE TYPE IN ('business', 'psychology') ORDER BY price ASC;
SELECT title_id, pub_id, price * ytd_sales AS Income, price FROM titles WHERE TYPE IN ('business', 'psychology') ORDER BY price;
SELECT title_id, pub_id, price * ytd_sales AS Income, price FROM titles WHERE TYPE IN ('business', 'psychology') ORDER BY price DESC, pub_id;
SELECT title_id, pub_id, price * ytd_sales AS Income, price FROM titles ORDER BY price DESC, pub_id;
SELECT title_id, pub_id, price * ytd_sales AS Income, price FROM titles WHERE TYPE IN ('business', 'psychology') ORDER BY pub_id, price DESC;
SELECT title_id, pub_id, price * ytd_sales AS Income, price FROM titles WHERE TYPE IN ('business', 'psychology') ORDER BY pub_id DESC, price DESC;
SELECT price, title_id, pub_id FROM titles ORDER BY price DESC, pub_id;
SELECT price, title_id, pub_id FROM titles ORDER BY price DESC, pub_id DESC;
SELECT title_id, pub_id, price * ytd_sales, price FROM titles WHERE TYPE IN ('business', 'psychology');
SELECT pub_id, price * ytd_sales, price, title_id  FROM titles;
SELECT title_id, pub_id, price * ytd_sales, price FROM titles WHERE TYPE IN ('business', 'psychology') ORDER BY pub_id, 3;
SELECT pub_id, price * ytd_sales, price, title_id  FROM titles ORDER BY pub_id, 2;
SELECT pub_id, price * ytd_sales, price, title_id  FROM titles ORDER BY pub_id, 3 DESC;
SELECT pub_id, price * ytd_sales as income, price, title_id  FROM titles ORDER BY pub_id, income DESC;
SELECT title_id, pub_id, price * ytd_sales AS income, price FROM titles WHERE TYPE IN ('business', 'psychology') ORDER BY pub_id, income DESC;
SELECT pub_id, price * ytd_sales, price, title_id  FROM titles ORDER BY pub_id, price * ytd_sales DESC;
SELECT pub_id, price * ytd_sales, price, title_id FROM titles ORDER BY pub_id, price * ytd_sales DESC;
SELECT title_id, pub_id, price * ytd_sales AS income, price FROM titles WHERE TYPE = 'business' OR price IS NULL ORDER BY price;

SELECT ALL au_id FROM titleauthors;
SELECT DISTINCT au_id FROM titleauthors;
# SELECT state, DISTINCT city FROM authors;
SELECT pub_id, type FROM titles ORDER BY pub_id;
SELECT DISTINCT pub_id FROM titles ORDER BY pub_id;

SELECT DISTINCT au_id FROM titleauthors ORDER BY au_id;
SELECT DISTINCT pub_id, type FROM titles ORDER BY pub_id;

SELECT SUM(ytd_sales) AS Total FROM titles;
SELECT price, SUM(price) FROM titles;
SELECT COUNT(price) FROM titles;
SELECT COUNT(price), SUM(price) FROM titles;
SELECT COUNT(price), SUM(DISTINCT price) FROM titles;
SELECT AVG(advance), SUM(ytd_sales) FROM titles;
SELECT AVG(advance), SUM(ytd_sales) FROM titles WHERE type = 'business';
SELECT COUNT(advance) FROM titles;
SELECT COUNT(title) FROM titles;
SELECT COUNT(*) FROM titles;
SELECT COUNT(DISTINCT title) FROM titles WHERE type = 'poetry';

SELECT pub_id, type FROM titles ORDER BY pub_id;
SELECT DISTINCT pub_id FROM titles ORDER BY pub_id;
SELECT DISTINCT type FROM titles ORDER BY type;
SELECT DISTINCT pub_id, type FROM titles ORDER BY pub_id;
SELECT DISTINCT * FROM titles;
SELECT COUNT(title_id), COUNT(*) FROM titles;
SELECT MIN(au_lname) FROM authors;
SELECT AVG(advance), SUM(ytd_sales) FROM titles;
SELECT COUNT(DISTINCT title) FROM titles WHERE type = 'poetry';


