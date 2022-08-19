package com.gnt.member.service;

import static com.gnt.common.JDBCTemplate.*;

import java.sql.Connection;

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

	
}


