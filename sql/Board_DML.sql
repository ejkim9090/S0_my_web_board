-- 가장 기본
INSERT INTO MEMBER (MID, MPWD, MNAME, MEMAIL, MAUTHCODE) VALUES('ADMIN','ADMIN','관리자','a@a.com',1);
INSERT INTO BOARDTYPE VALUES('A','일반게시판');
INSERT INTO BOARDTYPE VALUES('B','QNA');
COMMIT;
-- 추가계정, 추가게시글 2개씩
INSERT INTO MEMBER (MID, MPWD, MNAME, MEMAIL, MAUTHCODE) VALUES('EJKIM','EJKIM','ㅇㅈㅇ','ej@a.com',1);
INSERT INTO MEMBER (MID, MPWD, MNAME, MEMAIL, MAUTHCODE) VALUES('user1','user1','유져1','user1@a.com',1);
INSERT INTO BOARD (BNO, BTITLE, BCONTENT, BREF, BRELEVEL, BRESTEP, BWRITER, BTYPE)
VALUES ((SELECT NVL(MAX(BNO),0)+1 FROM BOARD), '1TITLE','1CONTENT', (SELECT NVL(MAX(BNO),0)+1 FROM BOARD), 0, 1, 'EJKIM', 'A')
;
INSERT INTO BOARD (BNO, BTITLE, BCONTENT, BREF, BRELEVEL, BRESTEP, BWRITER, BTYPE)
VALUES ((SELECT NVL(MAX(BNO),0)+1 FROM BOARD), '2TITLE','2CONTENT', (SELECT NVL(MAX(BNO),0)+1 FROM BOARD), 0, 1, 'EJKIM', 'A')
;
COMMIT;




--게시글
--원글 
INSERT INTO BOARD (BNO, BTITLE, BCONTENT, BREF, BRELEVEL, BRESTEP, BWRITER, BTYPE)
VALUES ((SELECT NVL(MAX(BNO),0)+1 FROM BOARD), '&NUMBER TITLE','CONTENT', (SELECT NVL(MAX(BNO),0)+1 FROM BOARD), 0, 1, 'EJKIM', 'A')
;
-- 답글 : 경우는 INSERT 전에 UPDATE 먼저 수행하여 STEP 수정을 함.
UPDATE BOARD SET BRESTEP = BRESTEP+1 
WHERE BREF = (SELECT BREF FROM BOARD WHERE BNO='&답글번호')
AND BRESTEP > (SELECT BRESTEP FROM BOARD WHERE BNO='&답글번호')
;
INSERT INTO BOARD (BNO, BTITLE, BCONTENT, BREF, BRELEVEL, BRESTEP, BWRITER, BTYPE)
VALUES ((SELECT NVL(MAX(BNO),0)+1 FROM BOARD), '&NUMBER TITLE','CONTENT', 
    (SELECT BREF FROM BOARD WHERE BNO='&답글번호'), 
    (SELECT BRELEVEL FROM BOARD WHERE BNO='&답글번호')+1, 
    (SELECT BRESTEP FROM BOARD WHERE BNO='&답글번호')+1,
    'EJKIM', 'A')
;

COMMIT;
-- 게시판목록보기
SELECT * FROM BOARD ORDER BY BREF DESC, BRESTEP ASC;
SELECT * FROM BOARD;
SELECT MAX(BNO) FROM BOARD;
SELECT NVL(MAX(BNO),0) FROM BOARD;
SELECT NVL(MAX(BNO),0)+1 FROM BOARD;


(SELECT BRELEVEL FROM BOARD WHERE BNO='&답글번호');
(SELECT BRESTEP FROM BOARD WHERE BNO='&답글번호');

DESC BOARD;
DESC MEMBER;
DESC BOARDTYPE;
--BNO      NOT NULL NUMBER          
--BTITLE   NOT NULL VARCHAR2(300)  
--BCONTENT NOT NULL VARCHAR2(4000) 
--BDATE    NOT NULL TIMESTAMP(6)   
--BCNT     NOT NULL NUMBER         
--BREF     NOT NULL NUMBER         원본글번호
--BRELEVEL NOT NULL NUMBER         원본글:0, 답글:1, 답답2
--BRESTEP  NOT NULL NUMBER         원본글:1, 순서
--BWRITER  NOT NULL VARCHAR2(30)   
--BTYPE    NOT NULL CHAR(1)    


desc bfile;
select * from board;
desc business_info;

select * from board where bno=1;
select * from board left outer join BFILE using(bno) where bno=1;