DROP TABLE MEMBER CASCADE CONSTRAINTS;
CREATE TABLE MEMBER(
 ID VARCHAR2(15 BYTE),
 PASSWD VARCHAR2(15 BYTE) NOT NULL,
 NAME VARCHAR2(20 BYTE) NOT NULL,
 EMAIL VARCHAR2(30 BYTE),
 GENDER CHAR(1 BYTE) CHECK (GENDER IN ('M', 'F')),
 AGE NUMBER,
 PHONE CHAR(13 BYTE),
 ADDRESS VARCHAR2(50 BYTE),
 ENROLL_DATE DATE DEFAULT SYSDATE,
 CONSTRAINT PK_MEMBER PRIMARY KEY (ID)
);
DROP TABLE BOARD CASCADE CONSTRAINTS;
CREATE TABLE BOARD (
BOARD_NUM NUMBER, -- 게시글 번호
BOARD_TITLE VARCHAR2(50), -- 게시글 제목
BOARD_WRITER VARCHAR2(15), -- 게시글 작성자
BOARD_CONTENT VARCHAR2(2000), -- 게시글 내용
BOARD_ORIGINAL_FILENAME VARCHAR2(100), -- 업로드한 원래 파일명
BOARD_RENAME_FILENAME VARCHAR2(100), -- 바뀐 파일명
BOARD_DATE DATE DEFAULT SYSDATE,-- 게시글 올린 날짜
BOARD_LEVEL NUMBER DEFAULT 0,-- 글레벨 : 원글 0, 원글의 답글 1, 답글의답글 2
BOARD_REF NUMBER, -- 원글일때는 자기번호, 답글일 때 참조하는 원글 번호
BOARD_REPLY_REF NUMBER,-- 원글일때는 0, 레벨이 1이면 자기번호, 레벨이 2이면 참조하는 답글번호
BOARD_REPLY_SEQ NUMBER DEFAULT 0, -- 답글의 순번
BOARD_READCOUNT NUMBER DEFAULT 0, -- 조회수
CONSTRAINT PK_BOARD PRIMARY KEY (BOARD_NUM),
CONSTRAINT FK_BOARD_WRITER FOREIGN KEY (BOARD_WRITER) 
REFERENCES MEMBER (ID) ON DELETE SET NULL,
CONSTRAINT FK_BOARD_REF FOREIGN KEY (BOARD_REF) 
REFERENCES BOARD (BOARD_NUM) ON DELETE CASCADE,
CONSTRAINT FK_BOARD_REPLY_REF FOREIGN KEY (BOARD_REPLY_REF) 
REFERENCES BOARD (BOARD_NUM) ON DELETE CASCADE
);

select * from MEMBER;

drop sequence seq_board_num;
create sequence seq_board_num
    start with 0
    increment by 1
    minvalue 0
    nocycle
;

desc board;

insert 
    into board values (0
            ,'aaa', 'a' ,'aaa'
            , null, null
            , default, default, 0, 0, default, default)        
;

insert 
    into board values (seq_board_num.nextval
            ,'aaa', 'a' ,'aaa'
            , null, null
            , default, default, seq_board_num.nextval, 0, default, default)        
;

select * from board;
select * from member;
















