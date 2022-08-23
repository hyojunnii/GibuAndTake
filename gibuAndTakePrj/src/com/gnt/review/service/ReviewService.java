package com.gnt.review.service;

import java.sql.Connection;
import java.util.List;

import com.gnt.review.repository.ReviewDao;
import com.gnt.review.vo.ReviewPageVo;
import com.gnt.review.vo.ReviewVo;

import static com.gnt.common.JDBCTemplate.*;

public class ReviewService {
	
	private final ReviewDao dao = new ReviewDao();
	
	public int getCount(int category) {
		Connection conn = null;
		int result = 0;
		
		try {
			conn = getConnection();
			result = dao.getCount(conn, category);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(conn);
		}
		return result;
	}
	
	public List<ReviewVo> selectList(ReviewPageVo pageVo) {
		List<ReviewVo> result = null;
		Connection conn = null;
		
		conn = getConnection();
		result = dao.selectList(conn, pageVo);
	
		close(conn);
			
		return result;
	}

	public ReviewVo selectReviewOne(String revNo) {
		ReviewVo result = null;
		Connection conn = null;
		
		conn = getConnection();
		result = dao.selectReviewOne(conn, revNo);
		result.setRevImg(dao.selectImg(conn, revNo));
		close(conn);
			
		return result;
	}
}
	
