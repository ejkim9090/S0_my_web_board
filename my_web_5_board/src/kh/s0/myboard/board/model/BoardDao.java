package kh.s0.myboard.board.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

public class BoardDao {
// 최소 5개 
//	insert
	public int insert(Connection conn, BoardVo vo) {
		int result = 0;
		return result;
	}
//	update
	public int update(Connection conn, BoardVo vo, int bno/*주로 PK*/) {
		int result = 0;
		return result;
	}
//	delete
	public int delete(Connection conn, int bno/*주로 PK*/) {
		int result = 0;
		return result;
	}
//	selectList
	public List<BoardVo> selectList(Connection conn){
		List<BoardVo> volist = null;
//		Statement stmt = conn.createStatement();
//		String sql = "select * from board";
//		ResultSet rs = stmt.executeQuery(sql);
//		while(rs.next()) {
//			
//		}
		return volist;
	}
//	selectOne
	public BoardVo selectOne(Connection conn, int bno/*주로 PK*/){
		BoardVo vo = null;
		return vo;
	}

}
