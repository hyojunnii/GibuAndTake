package com.gnt.breakdown.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.gnt.breakdown.vo.BreakdownVo;
import static com.gnt.common.JDBCTemplate.*;

public class BreakdownDao {

	public ArrayList<BreakdownVo> showList(Connection conn) {
		
		String sql = "";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<BreakdownVo> list = new ArrayList<BreakdownVo>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String title = rs.getString("");
				String regName = rs.getString("");
				String payNo = rs.getString("");
				String payName = rs.getString("");
				int payMoney = rs.getInt("");
				String payDate = rs.getString("");
				
				BreakdownVo vo = new BreakdownVo();
				vo.setRegName(regName);
				vo.setPayNo(payNo);
				vo.setPayName(payName);
				vo.setPayMoney(payMoney);
				vo.setPayDate(payDate);
				
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return list;
	}
	
}
