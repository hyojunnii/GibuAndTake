package com.gnt.breakdown.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.gnt.breakdown.vo.BreakdownVo;
import com.gnt.member.vo.MemberVo;

import static com.gnt.common.JDBCTemplate.*;

public class BreakdownDao {

	public ArrayList<BreakdownVo> showList(Connection conn, MemberVo m) {
		
		String paySql = "SELECT M.M_ID, R.REG_NAME, P.P_NO, P_NAME, PL_DATE, PL_MONEY FROM PAYLIST PL JOIN PAY P ON P.P_NO = PL.P_NO JOIN MEMBER M ON M.M_NO = P.M_NO JOIN REGIST R ON R.REG_NO = PL.REG_NO WHERE R.REG_CLASS = '기부' AND P.M_NO = 1 ORDER BY P.P_NO DESC";
		String corpSql = "SELECT R.REG_NO, M.M_NO, M.M_NAME, M.M_ADD, M.M_REGNUM FROM REGIST R JOIN MEMBER M ON M.M_NO = R.M_NO JOIN PAYLIST PL ON PL.REG_NO = R.REG_NO WHERE PL.PL_NO = 1";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<BreakdownVo> list = new ArrayList<BreakdownVo>();
		BreakdownVo vo = null;
		
		try {
			pstmt = conn.prepareStatement(paySql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				String regName = rs.getString("REG_NAME");
				String payNo = rs.getString("P_NO");
				String payName = rs.getString("P_NAME");
				String payMoney = rs.getString("PL_MONEY");
				String payDate = rs.getString("PL_DATE");
				
				vo = new BreakdownVo();
				vo.setMemberId(m.getId());
				vo.setMemberName(m.getName());
				vo.setRegName(regName);
				vo.setPayNo(payNo);
				vo.setPayName(payName);
				vo.setPayMoney(payMoney);
				vo.setPayDate(payDate);
				
			}
			
			list.add(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		System.out.println(list);
		return list;
	}
	
}
