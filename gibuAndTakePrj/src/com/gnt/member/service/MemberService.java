package com.gnt.member.service;

import static com.gnt.common.JDBCTemplate.*;

import java.sql.Connection;

import com.gnt.corp.vo.corpVo;
import com.gnt.member.repository.MemberDao;
import com.gnt.member.vo.MemberVo;

public class MemberService {

public MemberVo login(MemberVo vo) {
		
	
		Connection conn = null;
		MemberVo loginMember = null;
		try {
			conn = getConnection();
			
			//SQL 실행결과 리턴
		loginMember = new MemberDao().login(conn, vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return loginMember;
		
	}

public int memberjoin(MemberVo vo) {
	
	//id 유효성 검사 (4글자 이상인지)
	
			if(vo.getId().length() < 4) {
				// 회원가입 불가. 다음단계 진행 x 
				return -1;
			}
			
			//pwd 검사 (4글자 이상인지)
			if(vo.getPwd().length() < 4) {
				// 회원가입 불가. 다음단계 진행 x 
				return -2;
			}
			
			//아이디 중복 검사
			
			//vo 를 DB에 insert 
			
			//커넥션 준비
			Connection conn = null;
			int result = 0;
			try {
				conn = getConnection(); 
				
				result = new MemberDao().memberjoin(vo, conn);
				
				if(result == 1) {
					commit(conn);
				}else {
					rollback(conn);
				}
				
			} catch (Exception e) {
				rollback(conn);
				e.printStackTrace();
			} finally {
				close(conn);
			}
			
			
			
			return result;
	}



	
}


