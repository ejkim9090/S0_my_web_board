package kh.book.b29.board.model.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.book.b29.board.model.dao.BoardDao;
import kh.book.b29.board.model.vo.Board;
import kh.book.b29.member.model.dao.MemberDao;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDao dao;
	@Autowired
	private MemberDao mDao;
	
	@Override
	public int insertBoard(Board vo) throws Exception {
		return dao.insertBoard(vo);
	}

	@Override
	public int updateBoard(Board vo)  throws Exception {
		insertBoard(vo);
		deleteBoard(20);
		return 0;
	}

	@Override
	public int deleteBoard(int boardNum)  throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Board selectBoard(int boardNum)  throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Board> selectListBoard()  throws Exception {
		return dao.selectListBoard();
	}

	@Override
	public List<Board> selectListBoard(int currentPageNum, int limits)  throws Exception {
		return dao.selectListBoard(currentPageNum, limits);
	}

	@Override
	public List<Board> selectListBoard(int currentPageNum, int limits, String searchWord)  throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectBoardCount() throws Exception {
		return dao.selectBoardCount();
	}

	@Override
	public int selectBoardCount2() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
