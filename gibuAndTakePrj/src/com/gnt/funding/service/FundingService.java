package com.gnt.funding.service;

import static com.gnt.common.JDBCTemplate.close;
import static com.gnt.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.gnt.funding.repository.FundingDao;
import com.gnt.funding.vo.FundingVo;
import com.gnt.gibu.vo.GibuVo;


public class FundingService {

	private final FundingDao dao = new FundingDao();
	
	public List<FundingVo> selectList(int type) {
		
		Connection conn = null;
		List<FundingVo> voList = null;
		
		conn = getConnection();
		//DAO 호출	
			voList = dao.selectList(conn, type);
			close(conn);
		return voList;
	}

	public int getListCount(int type) {
		Connection conn = null;
		int result = 0;
		conn = getConnection();
		//DAO 호출
			result = dao.getListCount(conn, type);
			close(conn);
		return result;
	}

	public List<FundingVo> selectDoneList(int type) {
		Connection conn = null;
		List<FundingVo> voList = null;
		
		conn = getConnection();
		//DAO 호출	
			voList = dao.selectDoneList(conn, type);
			close(conn);
		return voList;
	}

	public int getListDoneCount(int type) {
		Connection conn = null;
		int result = 0;
		conn = getConnection();
		//DAO 호출
			result = dao.getListDoneCount(conn, type);
			close(conn);
		return result;
	}

	

}
