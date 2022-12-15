INSERT INTO
	board_mst
VALUES
	(0, '제목1', '게시글 내용1', 0, 1),
	(0, '제목2', '게시글 내용2', 0, 1),
	(0, '제목3', '게시글 내용3', 0, 1),
	(0, '제목1', '게시글 내용1', 0, 2),
	(0, '제목2', '게시글 내용2', 0, 2),
	(0, '제목3', '게시글 내용3', 0, 2),
	(0, '제목4', '게시글 내용4', 0, 1),
	(0, '제목5', '게시글 내용5', 0, 1),
	(0, '제목6', '게시글 내용6', 0, 1),
	(0, '제목4', '게시글 내용4', 0, 2),
	(0, '제목5', '게시글 내용5', 0, 2),
	(0, '제목6', '게시글 내용6', 0, 2);
/*	
SELECT
	*
FROM
	board_mst;

글쓴이끼리 묶어라
서브 쿼리는 항상 괄호로 묶는다, 서브쿼리는 값을 무조건 하나만 가져온다.
한 행마다 SELECT 돈다
셀렉트보다 조인이 처리속도가  훨씬 빠르다
*/

SELECT
	*,
	(SELECT COUNT(1) FROM board_mst bm2 WHERE bm2.writer_id = bm.writer_id) AS writer_count  /*bm2 를 조회할때 writer 갯수가 1번인 애를 다 가져와라.*/
FROM
	board_mst bm;

SELECT
	bm.id,
	bm.title,
	bm.content,
	bm.read_count,
	bm.writer_id,
	wc.writer_count
FROM
	board_mst bm
	LEFT OUTER JOIN (SELECT
		writer_id,
		COUNT(1) AS writer_count
	FROM
		board_mst
	GROUP BY
		writer_id) wc ON(wc.writer_id = bm.writer_id);
SHOW PROFILES;

SET profiling = 1;	/* 쿼리 먼저 실행하고 난뒤 실행 */

