/*
C(reate)R(ead)U(pdate)D(elete)

INSERT (추가)	- C
SELECT (조회) - R
UPDATE (수정) - U
DELETE (삭제) - D
*/

INSERT INTO product_mst
/* (id, product_name, product_price) 생략가능 */
VALUES
(0, '스타벅스 블루 텀블225러', 15000),
(0, '스타벅스 화이트 머그212컵2', 20000),
(0, '스타벅스 블랙 머그컵32132', 25000),
(0, '스타벅스ㅋㅋ', 15000);

SELECT
	id,
	product_name,
	product_price
FROM
	product_mst;
	
INSERT INTO student_mst
(id, `name`, student_year, score)
VALUES
(0, '임지현', 1, 80),
(0, '신경수', 2, 90),
(0, '고희주', 3, 75),
(0, '문승주', 1, 85),
(0, '장건녕', 2, 95),
(0, '박수현', 3, 90),
(0, '황석민', 1, 80),
(0, '박준현', 2, 85),
(0, '이승아', 3, 90),
(0, '김수현', 1, 75);

SELECT	/*순서변경 가능*/
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	student_year = 1 AND score > 80 OR score = 80 /*AND : ~이고, or : ~이거나, ~또는  */
	OR (student_year = 3 AND score = 75);

SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	/*not student_year = 3,  not : != */
	`name` LIKE '%수%' AND `name` NOT LIKE '%수'; /*% : 무엇이든 들어가도 상관*/
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	student_year not IN(1, 2); /* 1학년이거나 2학년 */
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	score not BETWEEN 80 AND 90; 
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	`name` IS NOT NULL;/* null이 아닌 모든 것을 데려옴*/
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	`name` IS NULL;/* null 값만 데려옴*/
	
/*-------------------------------------------------*/

UPDATE student_mst
SET score = 80
WHERE `name` = '박준현';
/*학년이 2학년인 학생들 중에 80 ~ 90 사이 학생들의 점수로 100으로 바꿔라 */

UPDATE student_mst
SET score = 100
WHERE student_year = 2 AND score BETWEEN 80 AND 90;

/*-------------------------------------------------*/

DELETE
FROM
	student_mst
WHERE
	score < 80;