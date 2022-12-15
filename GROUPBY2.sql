SELECT
	product_name,
	COUNT(order_id),	/* 행의 갯수를 세알림  */
	SUM(stock),
	MIN(stock),
	MAX(stocK),
	SUM(stock) / COUNT(1),
	AVG(stock)

FROM
	order_mst
GROUP BY
	product_name;
	
/*-------------------------------------------------------------*/

SELECT
	product_name,
	SUM(price * stock) AS total_price
FROM
	order_mst
GROUP BY
	product_name;
	
/*-------------------------------------------------------------*/

SELECT
	product_name,
	price * stock AS total_price
FROM
	order_mst;
	
/*-------------------------------------------------------------*/

SELECT
	product_name,
	COUNT(order_id) AS order_count,	/* 행의 갯수를 세알림  */
	SUM(stock) AS stock_sum,
	MIN(stock),
	MAX(stocK) AS max_stock,
	SUM(stock) / COUNT(1),
	AVG(stock)
FROM
	order_mst
WHERE
	stock > 50
GROUP BY
	product_name
HAVING
	max_stock > 49
ORDER BY
	order_count desc,
	stock_sum desc
LIMIT 0, 2; /* 인자가 하나면 위에서부터의 갯수를 의미이고, 인자가 두개이면 앞은 시작 번호, 뒤는 갯수  */

/*-------------------------------------------------------------*/

SELECT
	*
FROM
	order_mst
LIMIT 3, 3;	/* 인덱스랑 키랑은 무관, LIMIT은 페이징 처리에 사용된다. */