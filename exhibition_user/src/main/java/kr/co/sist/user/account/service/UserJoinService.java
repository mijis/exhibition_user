package kr.co.sist.user.account.service;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.user.account.dao.UserJoinDAO;
import kr.co.sist.user.account.vo.MemberVO;

@Service("userJoinService")
public class UserJoinService {

	@Autowired(required = false)
	private UserJoinDAO ujDAO;
	
	public int joinUser(MemberVO mVO) {
		int cnt=0;
		try {
		cnt=ujDAO.joinUser(mVO);
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return cnt;
	}
	public int idCheck(String userId) {
		System.out.println(userId);
		/* try { */
		int check=ujDAO.idCheck(userId);
		/*}catch(PersistenceException pe) {
			pe.printStackTrace();
		}*/
		System.out.println("service id : "+userId);
		return check;
	}
	
}
