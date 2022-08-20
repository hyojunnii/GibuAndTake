package com.gnt.breakdown.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.gnt.breakdown.repository.BreakdownDao;
import com.gnt.breakdown.vo.BreakdownVo;
import com.gnt.member.vo.MemberVo;

import static com.gnt.common.JDBCTemplate.*;

public class BreakdownService {
	
	private final BreakdownDao dao = new BreakdownDao();

	public ArrayList<BreakdownVo> showList(MemberVo m) {
		Connection conn = null;
		ArrayList<BreakdownVo> list = null;
		
		try {
			conn = getConnection();
			list = dao.showList(conn, m);			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(conn);
		}
		return list;
	}
	

}
