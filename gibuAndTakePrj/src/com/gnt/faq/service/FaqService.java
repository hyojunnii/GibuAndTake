package com.gnt.faq.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.gnt.common.JDBCTemplate.*;

import com.gnt.common.PageVo;
import com.gnt.faq.repository.FaqDao;
import com.gnt.faq.vo.FaqVo;

public class FaqService {

	private final FaqDao dao = new FaqDao();
	
	public ArrayList<FaqVo> selectList(PageVo pageVo) {
		Connection conn = null;
		ArrayList<FaqVo> vo = null;
		
		try {
			conn = getConnection();
			
			vo = dao.selectList(conn, pageVo);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn);
		}
		
		return vo;
	}

	public int getCount() {
		Connection conn = null;
		int result = 0;
		
		try {
			conn = getConnection();
			
			result = dao.getCount(conn);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn);
		}
		
		return result;
	}

}
