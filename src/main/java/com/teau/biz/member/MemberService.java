package com.teau.biz.member;

import java.util.List;

public interface MemberService {
	
	// 기본이 public이라 생략 가능
	void insertMember(MemberVO vo);
	
	void updateMember(MemberVO vo);
	
	void deleteMember(MemberVO vo);
	
	MemberVO getMember(MemberVO vo);
	
	List<MemberVO> getMemberList(MemberVO vo);

}
