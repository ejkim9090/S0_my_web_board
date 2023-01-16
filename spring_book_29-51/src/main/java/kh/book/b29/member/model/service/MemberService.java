package kh.book.b29.member.model.service;

import kh.book.b29.member.model.vo.Member;


public interface MemberService {
	public int insertMember(Member vo);
	public int updateMember(Member vo);
	public int deleteMember(int boardNum);
	public Member selectMember(Member vo);  // 로그인
	public Member checkIdDup(String id);  // 내정보보기
}
