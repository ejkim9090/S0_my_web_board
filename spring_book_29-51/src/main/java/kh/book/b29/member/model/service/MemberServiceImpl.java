package kh.book.b29.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.book.b29.board.model.vo.Board;
import kh.book.b29.member.model.dao.MemberDao;
import kh.book.b29.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDao dao;

	public int sum () {
		return 100;
	}
	
	@Override
	public int insertMember(Member vo) {
		return dao.insertMember(vo);
	}

	@Override
	public int updateMember(Member vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMember(int boardNum) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Member selectMember(Member vo) {
		return dao.selectMember(vo);
	}

	@Override
	public Member checkIdDup(String id) {
		return dao.checkIdDup(id);
	}
	
	

}
