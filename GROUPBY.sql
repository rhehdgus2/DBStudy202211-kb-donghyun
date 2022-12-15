SELECT
	course_id,
	SUM(score) AS `총합`,
	AVG(score) AS `평균`
FROM
	score_mst
GROUP BY
	course_id
Having
	`총합` > 100;
	