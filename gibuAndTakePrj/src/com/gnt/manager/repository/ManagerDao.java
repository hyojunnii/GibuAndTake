package com.gnt.manager.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import static com.gnt.common.JDBCTemplate.*;
import com.gnt.manager.vo.ManagerVo;

public class ManagerDao {

	public ManagerVo login(Connection conn, ManagerVo vo) throws Exception{
		
		ManagerVo loginMember = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM MANAGER WHERE ID = ? AND PWD = ? AND STATUS ='N'";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPwd());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
			 	int no = rs.getInt("NO");
				String id = rs.getString("ID");
				String name = rs.getString("NAME");
				String phone = rs.getString("PHONE");
				String email = rs.getString("EMAIL");
				Timestamp enrollDate = rs.getTimestamp("ENROLL_DATE");
				Timestamp modifyDate = rs.getTimestamp("MODIFY_DATE");
				
				
				loginMember = new ManagerVo();
				loginMember.setNo(no);
				loginMember.setId(id);
				loginMember.setName(name);
				loginMember.setPhone(phone);
				loginMember.setEmail(email);
				loginMember.setEnrollDate(enrollDate);
				loginMember.setModifyDate(modifyDate);
		}
			
		}finally {
			close(pstmt);
			close(rs);
		}
		return loginMember;
	}

}
