package kr.co.sist.user.myInfo.dao;


import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.user.account.vo.MemberVO;
import kr.co.sist.user.myInfo.vo.MyReservationDomain;
import kr.co.sist.user.mybatis.MyBatisFramework;

@Component
public class MyInfoDAO {
	//������ȭ�鿡�� ��й�ȣȮ��
	public int pwCheck(MemberVO mVO)throws PersistenceException{
		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
		int cnt= ss.selectOne("kr.co.sist.user.checkPass",mVO);
		
		if(ss!= null) {ss.close();}//end if
		
		return cnt;
	}
	/**
	 * 나의 예약정보를 조회하는 dao
	 * @param userid
	 * @return
	 * @throws PersistenceException
	 */
	public List<MyReservationDomain> selectMyReservation(String userid) throws PersistenceException{
		List<MyReservationDomain> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		list = ss.selectList("kr.co.sist.user.myinfo.myRezMapper.selectMyRez",userid);
		
		if(ss != null) {ss.close();}//end if
		
		return list;
	}//selectMyReservation
	
	/**
	 * 예약 상세정보
	 * @param rez_num
	 * @return
	 * @throws PersistenceException
	 */
	public MyReservationDomain selectMyRezDetail(int rez_num)throws PersistenceException{
		MyReservationDomain md = null;
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		md=ss.selectOne("kr.co.sist.user.myinfo.myRezMapper.selectMyRezDetail",rez_num);
		
		if(ss != null) {ss.close();}//end if
		return md;
	}//selectMyRezDetail
	
	public int updateMyRezDetail(int rez_num)throws PersistenceException{
		int cnt = 0;
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		cnt=ss.update("kr.co.sist.user.myinfo.myRezMapper.deleteRez", rez_num);
		
		if(cnt > 0) {
			ss.commit();
		}//end if
		if(ss != null) {ss.close();}//end if
		return cnt;
	}//deleteMyRezDetail
}
