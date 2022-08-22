package com.gnt.stmt.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.gnt.common.JDBCTemplate.*;

import com.gnt.member.vo.MemberVo;
import com.gnt.stmt.repository.StmtDao;
import com.gnt.stmt.vo.StmtVo;

//import com.gnt.corpStmt.controller.StmtVo;


public class StmtService {
	
	private final StmtDao dao = new StmtDao();

	public ArrayList<StmtVo> showList(MemberVo m) {
		Connection conn = null;
		ArrayList<StmtVo> voList = null;
	
		conn = getConnection();
		voList = new StmtDao().showList(conn, m); 
		
		return voList;
	}
	

}
