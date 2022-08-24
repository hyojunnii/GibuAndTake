package com.gnt.pay.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.gnt.pay.vo.PaymentVo;
import static com.gnt.common.JDBCTemplate.*;

public class PaymentDao {

	public List<PaymentVo> callPaymentList(Connection conn, int no) {
		List<PaymentVo> result = new ArrayList<PaymentVo>();
		
		String sql = "SELECT P_NO, M_NO, P_NAME, P_NUMBER FROM PAY WHERE M_NO = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			
			//sql실행
			rs = pstmt.executeQuery();
			while(rs.next()) {
				PaymentVo vo = new PaymentVo();
				
				String pNo = rs.getString("P_NO");
				String mNo = rs.getString("M_NO");
				String pName = rs.getString("P_NAME");
				String pNumber = rs.getString("P_NUMBER");
				
				vo.setpNo(pNo);
				vo.setmNo(mNo);
				vo.setpName(pName);
				vo.setpNumber(pNumber);
				
				
				result.add(vo);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally{
			close(rs);
			close(pstmt);
		}
		
		
		return result;
	}

}
