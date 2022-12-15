SELECT
	nm.title,
	nm.content,
	wm.name,
	ni.img_name
FROM
	study_notice_mst nm
	LEFT OUTER JOIN study_writer_mst wm ON(wm.id = nm.writer_id)
	LEFT OUTER JOIN study_notice_img ni ON(ni.notice_id = nm.id);
	
	
SELECT
	*
FROM
	user_mst um	/* 기준	*/
	LEFT OUTER JOIN user_dtl ud ON (ud.id = um.id);
	
SELECT
	*
FROM
	user_dtl;
	

SELECT
	*
FROM
	order_mst om
	LEFT OUTER JOIN order_dtl od ON(od.order_id = om.id)	/*mst 기준 대상이 앞에오고 값이 뒤에*/
	LEFT OUTER JOIN user_mst um ON(um.id = om.user_id);


SELECT
	*
FROM
	user_mst um
	LEFT OUTER JOIN order_mst om ON(om.user_id = um.id)
	LEFT OUTER JOIN order_dtl od ON(od.order_id = om.id);