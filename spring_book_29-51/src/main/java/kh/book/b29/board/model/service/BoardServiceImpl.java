package kh.book.b29.board.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.book.b29.board.model.dao.BoardDao;
import kh.book.b29.board.model.vo.Board;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDao dao;
	
	@Override
	public int insertBoard(Board vo) {
		return dao.insertBoard(vo);
	}

	@Override
	public int updateBoard(Board vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteBoard(int boardNum) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Board selectBoard(int boardNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Board> selectListBoard() {
		return dao.selectListBoard();
	}

	@Override
	public List<Board> selectListBoard(int currentPageNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Board> selectListBoard(int currentPageNum, String searchWord) {
		// TODO Auto-generated method stub
		return null;
	}

}
