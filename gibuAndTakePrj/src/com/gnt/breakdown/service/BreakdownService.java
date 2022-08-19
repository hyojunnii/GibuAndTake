package com.gnt.breakdown.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.gnt.breakdown.repository.BreakdownDao;
import com.gnt.breakdown.vo.BreakdownVo;
import static com.gnt.common.JDBCTemplate.*;

public class BreakdownService {
	
	private final 

	public ArrayList<BreakdownVo> showList() {
		Connection conn = null;
		ArrayList<BreakdownVo> voList = null;
		
		conn=getConnection();
		voList = new BreakdownDao().showList(conn);
		
		return voList;
	}
	

}
