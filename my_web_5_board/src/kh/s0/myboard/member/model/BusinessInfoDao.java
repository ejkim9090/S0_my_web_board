package kh.s0.myboard.member.model;

import java.sql.Connection;
import java.util.List;


public class BusinessInfoDao {
	// 최소 5개 
//		insert - 등록
		public int insert(Connection conn, BusinessInfoVo vo) {
			int result = 0;
			return result;
		}
//		update - 수정
		public int update(Connection conn, BusinessInfoVo vo, String busno/*주로 PK*/) {
			int result = 0;
			return result;
		}
//		delete  - 삭제
		public int delete(Connection conn, String busno/*주로 PK*/) {
			int result = 0;
			return result;
		}
//		selectList  - 목록조회
		public List<BusinessInfoVo> selectList(Connection conn){
			List<BusinessInfoVo> volist = null;

			return volist;
		}
//		selectOne - 상세조회
		public BusinessInfoVo selectOne(Connection conn, String busno/*주로 PK*/){
			BusinessInfoVo vo = null;
			return vo;
		}
}
