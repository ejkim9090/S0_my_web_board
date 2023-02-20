package kh.s0.kd.board.model;

import java.sql.Connection;
import java.util.List;

import common.jdbc.JdbcTemplate;

public class BoardService {
	private BoardDao dao = new BoardDao();
	
// 최소 5개 CRUD
//	insert
	public int insert(BoardVo vo) {
		BoardDao dao2 = new BoardDao();
		dao2.delete(conn, bno);
		
		new BoardDao().delete(conn, bno);
		
		
		
		System.out.println(">>BoardService Param :"+ vo);
		int result = 0;  // insert, 0오류, 1정상
		int result2 = 0;  // update, -1오류, 012..정상
		Connection conn = JdbcTemplate.getConnection();
		JdbcTemplate.setAutoCommit(conn, false);
		
		if(vo.getBno() != 0) {
			//답글
			result2 = dao.updateForInsert(conn, vo);
			if(result2 >= 0)
				result = dao.insert(conn, vo);
		}else {
			// 원본글
			result = dao.insert(conn, vo);
		}
		if(result > 0) {
			JdbcTemplate.commit(conn);
		}else {
			JdbcTemplate.rollback(conn);
		}
		JdbcTemplate.close(conn);
		System.out.println(">>BoardService Return:"+ result);
		return result;
	}
//	update
	public int update(BoardVo vo, int bno/*주로 PK*/) {
		int result = 0;
		Connection conn = JdbcTemplate.getConnection();

		result = dao.update(conn, vo, bno);
		
		JdbcTemplate.close(conn);
		return result;
	}
//	delete
	public int delete(int bno/*주로 PK*/) {
		int result = 0;
		Connection conn = JdbcTemplate.getConnection();

		result = dao.delete(conn, bno);
		
		JdbcTemplate.close(conn);
		return result;
	}
//		selectList
	public List<BoardVo> selectList(){
		List<BoardVo> volist = null;
		Connection conn = JdbcTemplate.getConnection();

		volist = dao.selectList(conn);
		
		JdbcTemplate.close(conn);
		System.out.println("BoardService > selectList return:"+volist);
		return volist;
	}
//	selectList - overloading
	public List<BoardVo> selectList(int startRnum, int endRnum, String searchword){
		System.out.println("BoardService > selectList param 1:"+ startRnum);
		System.out.println("BoardService > selectList param 2:"+ endRnum);
		System.out.println("BoardService > selectList param 3:"+ searchword);
		List<BoardVo> volist = null;
		Connection conn = JdbcTemplate.getConnection();
	
		volist = dao.selectList(conn, startRnum, endRnum, searchword);
		
		JdbcTemplate.close(conn);
		System.out.println("BoardService > selectList return:"+volist);
		return volist;
	}
//		selectOne
	public BoardVo selectOne(int bno/*주로 PK*/){
		BoardVo vo = null;
		Connection conn = JdbcTemplate.getConnection();

		vo = dao.selectOne(conn, bno);
		
		JdbcTemplate.close(conn);
		return vo;
	}
//	selectTotalCnt
	public int selectTotalCnt(){
		int result = 0;
		Connection conn = JdbcTemplate.getConnection();
	
		result = dao.selectTotalCnt(conn);
		
		JdbcTemplate.close(conn);
		return result;
	}
	public int selectTotalCnt(String search){
		int result = 0;
		Connection conn = JdbcTemplate.getConnection();
	
		result = dao.selectTotalCnt(conn, search);
		
		JdbcTemplate.close(conn);
		return result;
	}



}


