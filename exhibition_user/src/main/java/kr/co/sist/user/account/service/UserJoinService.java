package kr.co.sist.user.account.service;

import kr.co.sist.user.account.vo.MemberVO;

public interface UserJoinService {
	void joinUser(MemberVO mVO);
	
	MemberVO idCheck(String userId);
}