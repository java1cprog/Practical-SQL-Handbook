SELECT title_id, pub_id, price * ytd_sales AS Income, price FROM titles WHERE TYPE IN ('business', 'psychology');
SELECT title_id, pub_id, price * ytd_sales AS Income, price FROM titles WHERE TYPE IN ('business', 'psychology') ORDER BY price DESC;
SELECT title_id, pub_id, price * ytd_sales AS Income, price FROM titles WHERE TYPE IN ('business', 'psychology') ORDER BY price ASC;
SELECT title_id, pub_id, price * ytd_sales AS Income, price FROM titles WHERE TYPE IN ('business', 'psychology') ORDER BY price;
SELECT title_id, pub_id, price * ytd_sales AS Income, price FROM titles WHERE TYPE IN ('business', 'psychology') ORDER BY price DESC, pub_id;
SELECT title_id, pub_id, price * ytd_sales AS Income, price FROM titles ORDER BY price DESC, pub_id;
SELECT title_id, pub_id, price * ytd_sales AS Income, price FROM titles WHERE TYPE IN ('business', 'psychology') ORDER BY pub_id, price DESC;
SELECT title_id, pub_id, price * ytd_sales AS Income, price FROM titles WHERE TYPE IN ('business', 'psychology') ORDER BY pub_id DESC, price DESC;
