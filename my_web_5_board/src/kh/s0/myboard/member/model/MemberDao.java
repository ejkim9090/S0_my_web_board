package kh.s0.myboard.member.model;

import java.sql.Connection;
import java.util.List;


// Member / BusinessInfo  
public class MemberDao {
//	insert
//	update
//	delete
//	selectList
//	selectOne
	// 최소 5개 
//	insert - 등록
	public int insert(Connection conn, MemberVo vo) {
		int result = 0;
		return result;
	}
//	update - 수정
	public int update(Connection conn, MemberVo vo, String mid/*주로 PK*/) {
		int result = 0;
		return result;
	}
//	delete  - 삭제
	public int delete(Connection conn, String mid/*주로 PK*/) {
		int result = 0;
		return result;
	}
//	selectList  - 목록조회
	public List<MemberVo> selectList(Connection conn){
		List<MemberVo> volist = null;

		return volist;
	}
//	selectOne - 상세조회
	public MemberVo selectOne(Connection conn, String mid/*주로 PK*/){
		MemberVo vo = null;
		return vo;
	}
}
