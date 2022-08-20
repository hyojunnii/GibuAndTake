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
		String sql = "SELECT * FROM MEMBER WHERE M_ID = ? AND M_PWD = ? AND M_DEL = 'N'";
		
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
				int m = rs.getInt("M_CLASS");
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
				
				loginMember = new MemberVo();
				
				loginMember.setNo(no);
				loginMember.setClas(m);
				loginMember.setRegnum(num);
				loginMember.setName(name);
				loginMember.setId(id);
				loginMember.setPwd(pwd);
				loginMember.setNick(nick);
				loginMember.setEmail(email);
				loginMember.setAddr(addr);
				loginMember.setPhone(phone);
				loginMember.setDate(enrolDate);
				loginMember.setDel(delete);
				loginMember.setBan(ban);
				loginMember.setMod(modifyDate);
				
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

	public int memberjoin(MemberVo vo, Connection conn) throws Exception {
		
		
			PreparedStatement pstmt = null;
			int result = 0;
		
			try {
			
			//SQL 준비
			String sql = "INSERT INTO MEMBER( M_NO , M_CLASS , M_REGNUM , M_NAME , M_ID , M_PWD , M_NICK , M_EMAIL , M_ADD , M_PHONE ) VALUES ( SEQ_MEMBER_M_NO.NEXTVAL , 1, ?, ?, ?, ?, ?, ?, ?, ?)";
			
			//SQL 객체에 담기
			pstmt = conn.prepareStatement(sql);
			
			//SQL 객체에 담고, SQL 완성하기
			pstmt.setString(1, vo.getRegnum());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getId());
			pstmt.setString(4, vo.getPwd());
			pstmt.setString(5, vo.getNick());
			pstmt.setString(6, vo.getEmail());
			pstmt.setString(7, vo.getAddr());
			pstmt.setString(8, vo.getPhone());
			
			//SQL 실행 및 실행결과 받기
			result = pstmt.executeUpdate();
			
			
		} catch (Exception e) {
			//롤백해야함
			throw e;
		} finally {
			//다 쓴 자원 정리하기
			close(pstmt);
		}
		return result;
		
	}
}


