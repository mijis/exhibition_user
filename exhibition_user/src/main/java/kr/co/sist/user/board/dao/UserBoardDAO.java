package kr.co.sist.user.board.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.user.board.domain.UserBoardDomain;
import kr.co.sist.user.board.vo.ReplyVO;
import kr.co.sist.user.board.vo.UserBoardVO;
import kr.co.sist.user.mybatis.MyBatisFramework;

@Component
public class UserBoardDAO {
	
	/**
	 * 카테고리에 따라 전체 게시글 리스트 출력
	 * @param ubVO 검색(아이디, 제목)
	 * @return 게시글 리스트
	 * @throws PersistenceException
	 */
	public List<UserBoardDomain> selectBoard(UserBoardVO ubVO) throws PersistenceException{
		List<UserBoardDomain> list=null;
		
		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
		list=ss.selectList("kr.co.sist.user.board.selectBoard", ubVO);
		if(ss != null) {
			ss.close();
		}//end if
		
		return list;
	}//selectCountry
	

	/**
	 * 페이징을 위한 전체 게시글 수
	 * @param cat_num
	 * @return
	 */
	public int selectTotalCount( UserBoardVO ubVO ) {
		int totalCnt=0;
		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
		totalCnt=ss.selectOne("kr.co.sist.user.board.totalBoardCnt", ubVO);
		if( ss !=null ) { ss.close(); }
		return totalCnt;
	}//selectTotalCount
	
	/**
	 * 게시글 삭제
	 * @param bd_id
	 * @return
	 */
	public int deleteBoard( int bd_id ) {
		int success=0;
		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
		success=ss.selectOne("kr.co.sist.user.board.deleteBoard", bd_id);
		if( ss !=null ) { ss.close(); }
		return success;
	}//deleteBoard
	
	/**
	 * 게시글 추가
	 * @param ubVO
	 */
	public int insertBoard( UserBoardVO ubVO) {
		int cnt = 0;
		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
		cnt = ss.insert("kr.co.sist.user.board.insertBoard", ubVO);
		if(cnt>0) {
			ss.commit();
		}
		if( ss !=null ) { ss.close(); }
		return cnt;
	}//insertBoard
	
	/**
	 * 게시글 수정
	 * @param ubVO
	 * @return 성공 여부
	 */
	public int updateBoard( UserBoardVO ubVO) {
		int success=0;
		
		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
		success=ss.update("kr.co.sist.user.board.updateBoard", ubVO);
		
		if(success>0) {
			ss.commit();
		}
		if( ss !=null ) { ss.close(); }
		return success;
	}//updateBoard
	
	/**
	 * 게시글 상세 
	 * @param bd_id
	 * @return
	 */
	public UserBoardDomain selectBoardDetail( int bd_id) {
		UserBoardDomain ubDomain=new UserBoardDomain();
		
		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
		ubDomain=ss.selectOne("kr.co.sist.user.board.selectBoardDetail", bd_id);
		
		if( ss !=null ) { ss.close(); }
		
		return ubDomain;
	}//selectBoardDetail
	
	/**
	 * 카테고리 조회
	 * @return
	 */
	public List<UserBoardVO> selectCat( ) {
		List<UserBoardVO> list=null;
		
		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
		list=ss.selectList("kr.co.sist.user.board.selectCat");
		
		if( ss !=null ) { ss.close(); }
		
		return list;
	}//selectCat
	
	/**
	 * view 수 수정
	 * @param bd_id
	 */
	public int updateView(UserBoardVO uVO) {
		int success=0;
		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
		success = ss.update("kr.co.sist.user.board.updateView", uVO);
		if(success>0) {
			ss.commit();
		}
		if( ss !=null ) { ss.close(); }
		return success;
	}//updateView
	
	/**
	 * 댓글 보여주기
	 * @param bd_id
	 * @return
	 */
	public List<UserBoardVO> selectCom(int bd_id) {
		List<UserBoardVO> list=null;
		
		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
		list=ss.selectList("kr.co.sist.user.board.selectCom", bd_id);
		if( ss !=null ) { ss.close(); }
		
		return list;
	}//selectCom
	
	/**
	 * 댓글 삭제
	 * @param cm_id
	 * @return
	 */
	public int deleteCom(int cm_id) {
		int success=0;
		
		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
		success=ss.delete("kr.co.sist.user.board.deleteCom", cm_id);
		if(success>0) {
			ss.commit();
		}
		if( ss !=null ) { ss.close(); }
		
		return success;
	}//deleteCom
	
	/**
	 * 댓글 추가
	 * @param ubVO
	 * @return
	 */
	public int insertCom(ReplyVO rVO) {
		int success=0;
		
		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
		success=ss.insert("kr.co.sist.user.board.insertCom", rVO);
		if(success>0) {
			ss.commit();
		}
		if( ss !=null ) { ss.close(); }
		
		return success;
	}//insertCom
	
	public String selectManager(String userid)throws PersistenceException {
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		String mgr = ss.selectOne("kr.co.sist.user.board.selectAdmin",userid);
		
		if(ss != null) {ss.close();}//end if
		return mgr;
	}
	
	
	
}//class
