package kh.book.b29.member.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.book.b29.member.model.vo.Member;

@Repository
public class MemberDao {
	@Autowired
	private SqlSession sqlsession;
	
	public int insertMember(Member vo) {
		return sqlsession.insert("Member.insertMember", vo);
	}
	
	public Member checkIdDup(String id) {
		return sqlsession.selectOne("Member.memberInfo", id);
	}
	public Member selectMember(Member vo) {
		return sqlsession.selectOne("Member.loginCheck", vo);
	}

}
