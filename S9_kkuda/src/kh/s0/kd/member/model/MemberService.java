package kh.s0.kd.member.model;

import java.sql.Connection;
import java.util.List;

import static common.jdbc.JdbcTemplate.*;

public class MemberService {
	private MemberDao dao = new MemberDao();
//	insert - 등록
	public int insert(MemberVo vo) {
		int result = 0;
		Connection conn = getConnection();
		result = dao.insert(conn, vo);
		if(result > 0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
//	update - 수정
	public int update(MemberVo vo, String mid/*주로 PK*/) {
		int result = 0;
		Connection conn = getConnection();
		result = dao.update(conn, vo, mid);
		if(result > 0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
//	delete  - 삭제
	public int delete(String mid/*주로 PK*/) {
		int result = 0;
		Connection conn = getConnection();
		result = dao.delete(conn, mid);
		if(result > 0) commit(conn);
		else rollback(conn);
		close(conn);	
		return result;
	}
//	selectList  - 목록조회
	public List<MemberVo> selectList(){
		List<MemberVo> volist = null;
		Connection conn = getConnection();
		volist = dao.selectList(conn);
		close(conn);
		return volist;
	}
//	selectOne - 상세조회
	public MemberVo selectOne(String mid/*주로 PK*/){
		MemberVo vo = null;
		Connection conn = getConnection();
		vo = dao.selectOne(conn, mid);
		close(conn);
		return vo;
	}
// selectOne-Login 상세조회
	public MemberVo login(String mid, String mpwd){
		MemberVo vo = null;
		Connection conn = getConnection();
		vo = dao.login(conn, mid, mpwd);
		close(conn);
		return vo;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
