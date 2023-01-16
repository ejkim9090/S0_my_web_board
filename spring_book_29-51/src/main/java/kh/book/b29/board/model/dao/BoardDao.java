package kh.book.b29.board.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.book.b29.board.model.vo.Board;

@Repository
public class BoardDao {
	@Autowired
	private SqlSession sqlsession;

	public int insertBoard(Board vo) {
		return sqlsession.insert("Board.insertBoard", vo);
	}
	public List<Board> selectListBoard() {
		return sqlsession.selectList("Board.selectBoardList");
	}
}
