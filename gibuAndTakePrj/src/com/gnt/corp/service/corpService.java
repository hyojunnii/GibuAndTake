package com.gnt.corp.service;

import static com.gnt.common.JDBCTemplate.close;
import static com.gnt.common.JDBCTemplate.commit;
import static com.gnt.common.JDBCTemplate.getConnection;
import static com.gnt.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.gnt.corp.repository.CorpDao;
import com.gnt.corp.vo.corpVo;
import com.gnt.member.repository.MemberDao;
import com.gnt.member.vo.MemberVo;

public class corpService {

	public int corpjoin(corpVo cVo) {

		//아이디 중복 검사

		//vo 를 DB에 insert 

		//커넥션 준비
		Connection conn = null;
		int result = 0;
		int result2 = 0;
		try {

			conn = getConnection(); 
			
			result = new CorpDao().memberjoin(cVo, conn);
			result2 = new CorpDao().corpjoin(cVo, conn);

			if(result == 1) {
				if(result2 == 1) {
					commit(conn);
					
				}else {
					rollback(conn);
				}
			}else {
				rollback(conn);
			}

		} catch (Exception e) {
			rollback(conn);
			e.printStackTrace();
		} finally {
			close(conn);
		}
		return result2;
	}

	public int corpSelect(corpVo cvo) {
		int result = 0;
		Connection conn = null;
		
		
		try {
			conn = getConnection();
			
			result = new CorpDao().corpSelect(cvo, conn);
			
			if(result == 1) {
				commit(conn);
			}else {
				rollback(conn);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn);
		}
		
		
		return result;
	}

	public corpVo login(corpVo vo) {

		Connection conn = null;
		corpVo loginCorp = null;
		try {
			conn = getConnection();

			//SQL 실행결과 리턴
			loginCorp = new CorpDao().login(conn, vo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return loginCorp;

	}

	public corpVo corpUpdate(corpVo vo) {
		//비지니스 로직 (자바 || SQL)
	
		
		Connection conn = null;
		int result = 0;
		corpVo updateVo = null;
		
		try {
			
			conn = getConnection();
			result = new CorpDao().corpUpdate(conn, vo);
			
			//트랜잭션 처리 (commit || rollback)
			if(result == 1) {
				commit(conn);
				//다시한번 회원정보 조회 (회원번호)
				updateVo = selectOneByNo(vo.getNo());
			}else {
				rollback(conn);
			}
			
		}catch(Exception e) {
			rollback(conn);
			e.printStackTrace();
		}finally {
			close(conn);
		}
		
		
		//실행결과 리턴
		return updateVo;
		
	}private corpVo selectOneByNo(int no) {
		Connection conn = null;
		corpVo vo = null;
		
		try {
			conn = getConnection();
			vo = new CorpDao().selectOneByNo(conn,no);
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn);
		}
		
		
		return vo;
	}
}




