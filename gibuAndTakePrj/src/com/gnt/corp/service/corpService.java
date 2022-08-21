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
}



