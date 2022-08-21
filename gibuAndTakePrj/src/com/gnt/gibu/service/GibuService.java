package com.gnt.gibu.service;

import java.sql.Connection;
import java.util.List;

import static com.gnt.common.JDBCTemplate.*;

import com.gnt.gibu.repository.GibuDao;
import com.gnt.gibu.vo.GibuVo;

public class GibuService {
	
	private final GibuDao dao = new GibuDao();

	public List<GibuVo> selectList(int type) {
		
		Connection conn = null;
		List<GibuVo> voList = null;
		
	
		conn = getConnection();
		//DAO 호출	
			voList = dao.selectList(conn, type);
			close(conn);
		return voList;
	}

	//게시글 총 개수 구하기
	public int getListCount(int type) {
		Connection conn = null;
		int result = 0;
		conn = getConnection();
		//DAO 호출
			result = dao.getListCount(conn, type);
			close(conn);
		return result;
	}

	public List<GibuVo> selectDoneList(int type) {
		Connection conn = null;
		List<GibuVo> voList = null;
		
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

	public GibuVo selectDetail(int type, int num) {
		Connection conn = null;
		GibuVo vo = null;
		
		conn = getConnection();
		//DAO 호출	
			vo = dao.selectDetail(conn, type, num);
			close(conn);
		return vo;
	}

}
