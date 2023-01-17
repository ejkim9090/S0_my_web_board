package kh.book.b29.board.model.service;

import java.sql.SQLException;
import java.util.List;

import kh.book.b29.board.model.vo.Board;

public interface BoardService {
	public int insertBoard(Board vo)  throws Exception;
	public int updateBoard(Board vo)  throws Exception;
	public int deleteBoard(int boardNum)  throws Exception;
	public Board selectBoard(int boardNum)  throws Exception;
	public List<Board> selectListBoard()  throws Exception;
	public List<Board> selectListBoard(int currentPageNum, int limits) throws Exception;
	public List<Board> selectListBoard(int currentPageNum, int limits, String searchWord)  throws Exception;
	public int selectBoardCount()  throws Exception;
	public int selectBoardCount2()  throws Exception;
}
