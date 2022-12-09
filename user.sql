INSERT INTO
	user_mst
VALUES
	(0, 'aaa', '1234', '고동현', 'aaa@gmail.com', NOW(), NOW()),
	(0, 'bbb', '1234', '고동현', 'bbb@gmail.com', NOW(), NOW()),
	(0, 'ccc', '1234', '고동현', 'ccc@gmail.com', NOW(), NOW()),
	(0, 'ddd', '1234', '고동현', 'ddd@gmail.com', NOW(), NOW());
	
DELETE
FROM
	user_mst
WHERE
	id = 1;