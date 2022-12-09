SELECT
	om.id AS '주문번호',
	od.product_id AS '제품번호',
	pm.product_name,
	pm.product_price,
	od.order_stock,
	om.user_id,
	um.name
FROM
	order_mst as om
	LEFT OUTER JOIN order_dtl as od ON(od.order_id = om.id)
	LEFT OUTER JOIN product_mst as pm ON(pm.id = od.product_id)
	LEFT OUTER JOIN user_mst as um ON(om.user_id = um.id)
ORDER BY 
	od.id;