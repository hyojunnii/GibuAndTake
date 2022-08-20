package com.gnt.gibu.service;

import java.sql.Connection;
import java.util.List;

import static com.gnt.common.JDBCTemplate.*;

import com.gnt.gibu.repository.GibuDao;
import com.gnt.gibu.vo.GibuVo;

public class GibuService {
	
	private final GibuDao dao = new GibuDao();

	public List<GibuVo> selectList() {
		
		Connection conn = null;
		List<GibuVo> voList = null;
		
		conn = getConnection();
		//DAO 호출	
			voList = dao.selectList(conn);
			close(conn);
		return voList;
	}

	//게시글 총 개수 구하기
	public int getListCount() {
		Connection conn = null;
		int result = 0;
		conn = getConnection();
		//DAO 호출
			result = dao.getListCount(conn);
			close(conn);
		return result;
	}

}
