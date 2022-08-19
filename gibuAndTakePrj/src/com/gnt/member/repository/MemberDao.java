package com.gnt.member.repository;

import static com.gnt.common.JDBCTemplate.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import com.gnt.member.vo.MemberVo;

public class MemberDao {

	public MemberVo login(Connection conn ,MemberVo vo) throws Exception {
		
		MemberVo loginMember = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		//SQL 준비
		String sql = "SELECT M_ID , M_PWD , M_DEL FROM MEMBER WHERE M_ID = ? AND M_PWD = ?  AND M_DEL = 'N'";
		
		try {
			//SQL 객체에 담고, 물음표 채우기
			pstmt =  conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPwd());
			
			//SQL 실행 및 결과저장
            rs = pstmt.executeQuery();
			
			//rs 에서 데이터 꺼내서 객체로 만들기
			if(rs.next()) {
				int no = rs.getInt("M_NO");
				String m = rs.getString("M_CLASS");
				String num = rs.getString("M_REGNUM");
				String name = rs.getString("M_NAME");									
				String id = rs.getString("M_ID");
				String pwd = rs.getString("M_PWD");
				String nick = rs.getString("M_NICK");
				String email = rs.getString("M_EMAIL");
				String addr = rs.getString("M_ADD");
				String phone = rs.getString("M_PHONE");
				Timestamp enrolDate = rs.getTimestamp("M_DATE");
				String delete = rs.getString("M_DEL");
				String ban = rs.getString("M_BAN");
				Timestamp modifyDate = rs.getTimestamp("M_MOD");
				String content  = rs.getString("CORP_CONTENT");
				String cat  = rs.getString("CORP_CLASS");
				     
				
				
				
				
				loginMember = new MemberVo();
				
				loginMember.setNo(no);
				loginMember.setClas(no);
				loginMember.setRegnum(no);
				loginMember.setName(name);
				loginMember.setId(id);
				loginMember.setPwd(pwd);
				loginMember.setNick(nick);
				loginMember.setEmail(email);
				loginMember.setAddr(addr);
				loginMember.setPhone(phone);
				loginMember.setDate(null);
				loginMember.setDel(delete);
				loginMember.setBan(ban);
				loginMember.setMod(null);
				
				
				
			}
		}
		finally {
			//자원 반납
			close(pstmt);
			close(rs);
		}
		
		//만들어진 객체 리턴
		return loginMember;
		
	}

	
public MemberVo login2(Connection conn ,MemberVo vo) throws Exception {
		
		MemberVo loginMember = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		//SQL 준비
		String sql = "SELECT M_ID , M_PWD , M_DEL FROM MEMBER WHERE M_ID = ? AND M_PWD = ?  AND M_DEL = 'N'";
		
		try {
			//SQL 객체에 담고, 물음표 채우기
			pstmt =  conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPwd());
			
			//SQL 실행 및 결과저장
            rs = pstmt.executeQuery();
			
			//rs 에서 데이터 꺼내서 객체로 만들기
			if(rs.next()) {
				int no = rs.getInt("M_NO");
				String m = rs.getString("M_CLASS");
				String num = rs.getString("M_REGNUM");
				String name = rs.getString("M_NAME");									
				String id = rs.getString("M_ID");
				String pwd = rs.getString("M_PWD");
				String nick = rs.getString("M_NICK");
				String email = rs.getString("M_EMAIL");
				String addr = rs.getString("M_ADD");
				String phone = rs.getString("M_PHONE");
				Timestamp enrolDate = rs.getTimestamp("M_DATE");
				String delete = rs.getString("M_DEL");
				String ban = rs.getString("M_BAN");
				Timestamp modifyDate = rs.getTimestamp("M_MOD");
				String content  = rs.getString("CORP_CONTENT");
				String cat  = rs.getString("CORP_CLASS");
				     
				
				
				
				
				loginMember = new MemberVo();
				
				loginMember.setNo(no);
				loginMember.setClas(no);
				loginMember.setRegnum(no);
				loginMember.setName(name);
				loginMember.setId(id);
				loginMember.setPwd(pwd);
				loginMember.setNick(nick);
				loginMember.setEmail(email);
				loginMember.setAddr(addr);
				loginMember.setPhone(phone);
				loginMember.setDate(null);
				loginMember.setDel(delete);
				loginMember.setBan(ban);
				loginMember.setMod(null);
				
				
				
			}
		}
		finally {
			//자원 반납
			close(pstmt);
			close(rs);
		}
		
		//만들어진 객체 리턴
		return loginMember;
		
	}
}
