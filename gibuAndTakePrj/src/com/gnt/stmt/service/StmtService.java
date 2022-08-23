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

	public ArrayList<StmtVo> showDona(MemberVo m) {
		Connection conn = null;
		ArrayList<StmtVo> voList = null;
	
		conn = getConnection();
		voList = new StmtDao().showList(conn, m); 
		
		return voList;
	}

	public StmtVo edit(StmtVo vo) {
		Connection conn = null;
		int result = 0;
		StmtVo updateVo = null;
		try {
			conn = getConnection();
			result = new StmtDao().edit(conn, vo);
			
			if(result == 1) {
				commit(conn);
			}else {
				rollback(conn);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			rollback(conn);
		} finally {
			close(conn);
		}
		
		return updateVo;
	}

	public ArrayList<StmtVo> showExe(ArrayList<StmtVo> result) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
