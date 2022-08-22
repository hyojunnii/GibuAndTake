package com.gnt.stmt.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.gnt.member.vo.MemberVo;
import com.gnt.stmt.vo.StmtVo;

public class StmtDao {

	public ArrayList<StmtVo> showList(Connection conn, MemberVo m) {
		String sql = "";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<StmtVo> list = new ArrayList<StmtVo>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String memberId = m.getId();
				String executeNo = rs.getString("E_NO");
				String executeCtg = rs.getString("E_CTG");
				String executeCnt = rs.getString("E_CONTENT");
				String executeMoney = rs.getString("E_MONEY");
				
				StmtVo vo = new StmtVo();
				vo.setMemberId(memberId);
				vo.setExecuteNo(executeNo);
				vo.setExecuteCtg(executeCtg);
				vo.setExecuteCnt(executeCnt);
				vo.setExecuteMoney(executeMoney);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return null;
	}

}
