package kh.book.b29.board.model.service;

import java.util.List;

import kh.book.b29.board.model.vo.Board;

public interface BoardService {
	public int insertBoard(Board vo);
	public int updateBoard(Board vo);
	public int deleteBoard(int boardNum);
	public Board selectBoard(int boardNum);
	public List<Board> selectListBoard();
	public List<Board> selectListBoard(int currentPageNum);
	public List<Board> selectListBoard(int currentPageNum, String searchWord);
}
