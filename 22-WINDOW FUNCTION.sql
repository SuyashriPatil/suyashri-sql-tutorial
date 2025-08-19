SELECT * FROM products;

--ASSIGN A UNIQUE ROW NUMBERWITHIN THE SAME CATEGORY--

SELECT product_name,category,price,
ROW_NUMBER() OVER(PARTITION BY category ORDER BY price DESC) AS row_num
FROM products;

SELECT product_name,category,price,
DENSE_RANK() OVER(PARTITION BY category ORDER BY price DESC) AS Ranking
FROM products;


SELECT product_name,category,price,
SUM(price) OVER(PARTITION BY category  ORDER BY price ASC) AS TOTAL
FROM products;


SELECT product_name,category,price,
AVG(price) OVER(PARTITION BY category  ORDER BY price ASC) AS AVG_TOTAL
FROM products;

