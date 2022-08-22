package com.gnt.notice.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import static com.gnt.common.JDBCTemplate.*;

import com.gnt.managercategory.vo.CategoryVo;
import com.gnt.notice.repository.NoticeDao;
import com.gnt.notice.vo.NoticeVo;

public class NoticeService {

	public ArrayList<NoticeVo> selectList() {
		Connection conn = null;
		ArrayList<NoticeVo> voList = null;
		
		try {
			conn = getConnection();
			voList = new NoticeDao().selectList(conn);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn);
		}
		return voList;
	}

	public int writeNotice(NoticeVo vo) {
		Connection conn = null;
		int result = 0;
		
		try {
			conn = getConnection();
			result = new NoticeDao().writeNotice(conn, vo);
			
			if(result == 1) {
				commit(conn);
			}else {
				rollback(conn);
			}
		}catch(Exception e) {
			rollback(conn);
		}finally {
			close(conn);
		}
		
		return result;
	}

	public List<CategoryVo> selectCategoryList() {
		Connection conn = getConnection();
		List<CategoryVo> list = new NoticeDao().selectCategoryList(conn);
		close(conn);
		return list;
	}

	public int increaseNotice(String num) {
		Connection conn = null;
		int result = 0;
		
		try {
			conn = getConnection();
			//DAO 호출
			result = new NoticeDao().increaseNotice(conn, num);
			
			if(result == 1) {
				commit(conn);
			}else {
				rollback(conn);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(conn);
		}
		
		return result;
	}

	public NoticeVo selectNum(String num) {
		Connection conn = null;
		NoticeVo vo = null;
		
		try {
			conn = getConnection();
			vo = new NoticeDao().selectNum(conn, num);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn);
		}
		
		return vo;
	}

}
