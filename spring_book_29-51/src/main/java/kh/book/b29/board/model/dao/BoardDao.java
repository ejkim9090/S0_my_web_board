package kh.book.b29.board.model.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.book.b29.board.model.vo.Board;

@Repository
public class BoardDao {
	@Autowired
	private SqlSession sqlsession;

	public int insertBoard(Board vo) throws Exception {
		return sqlsession.insert("Board.insertBoard", vo);
	}
	public List<Board> selectListBoard() throws Exception {
//		List<Board> list =new ArrayList<Board>();
//오류발생		Board vo = sqlsession.selectOne("Board.selectBoardList");
//		list.add(vo);
//		return list;
		return sqlsession.selectList("Board.selectBoardList");
	}
	public List<Board> selectListBoard(int  currentPageNum, int limits) throws Exception {
//		RowBounds rb = new RowBounds((currentPageNum-1)*limits, limits);
		return sqlsession.selectList("Board.selectBoardList", null, new RowBounds((currentPageNum-1)*limits, limits));
	}
	
	public int selectBoardCount() {
		return sqlsession.selectOne("Board.selectBoardCount");
	}
}
