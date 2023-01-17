package kh.book.b29.board.model.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class Board {
//	BOARD_NUM NUMBER, -- 게시글 번호
//	BOARD_TITLE VARCHAR2(50), -- 게시글 제목
//	BOARD_WRITER VARCHAR2(15), -- 게시글 작성자
//	BOARD_CONTENT VARCHAR2(2000), -- 게시글 내용
//	BOARD_ORIGINAL_FILENAME VARCHAR2(100), -- 업로드한 원래 파일명
//	BOARD_RENAME_FILENAME VARCHAR2(100), -- 바뀐 파일명
//	BOARD_DATE DATE DEFAULT SYSDATE,-- 게시글 올린 날짜
//	BOARD_LEVEL NUMBER DEFAULT 0,-- 글레벨 : 원글 0, 원글의 답글 1, 답글의답글 2
//	BOARD_REF NUMBER, -- 원글일때는 자기번호, 답글일 때 참조하는 원글 번호
//	BOARD_REPLY_REF NUMBER,-- 원글일때는 0, 레벨이 1이면 자기번호, 레벨이 2이면 참조하는 답글번호
//	BOARD_REPLY_SEQ NUMBER DEFAULT 0, -- 답글의 순번
//	BOARD_READCOUNT NUMBER DEFAULT 0, -- 조회수
	private int boardNum;
	private String boardTitle;
	private String boardWriter;
	private String boardContent;
	private String boardOriginalFileName;
	private String boardRenameFileName;
	private Date boardDate;
	private int boardLevel;
	private int boardRef;
	private int boardReplyRef;
	private int boardReplySeq;
	private int boardReadCount;

	
}
