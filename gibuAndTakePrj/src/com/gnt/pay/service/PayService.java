package com.gnt.pay.service;

import java.sql.Connection;
import java.util.List;

import static com.gnt.common.JDBCTemplate.*;

import com.gnt.pay.repository.PaymentDao;
import com.gnt.pay.vo.PaymentVo;

public class PayService {
	
	private final PaymentDao dao = new PaymentDao();

	public List<PaymentVo> callPaymentList(int no) {
		List<PaymentVo> result = null;
		
		Connection conn = null;
		
		conn = getConnection();
		result = dao.callPaymentList(conn, no);
	
		close(conn);
		
		return result;
	}

	

	

}
