package com.gnt.search.service;

import java.sql.Connection;
import java.util.List;

import static com.gnt.common.JDBCTemplate.*;

import com.gnt.common.PageVo;
import com.gnt.project.vo.RegistVo;
import com.gnt.search.repository.SearchDao;

public class SearchService {
	
	private final SearchDao dao = new SearchDao();
	
	//등록테이블 게시글 총 갯수
	public int getCount() {
		int result = 0;
		Connection conn = null;
		try {
			conn = getConnection();
			
			result = dao.getCount(conn);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(conn);
		}
		return result;
	}
	
	//등록테이블 검색 게시글 갯수
	public int getSearchCount(String search) {
		int result = 0;
		Connection conn = null;
		try {
			conn = getConnection();
			
			result = dao.getSearchCount(conn, search);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(conn);
		}
		return result;
	}
	
	//추천목록
	public List<RegistVo> recommendList(PageVo pageVo, String s) {
		Connection conn = null;
		
		List<RegistVo> recommendList = null;
		
		conn = getConnection();
		
		if("1".equals(s)) {
			recommendList = dao.recommendPopularList(conn, pageVo);
		} else {
			recommendList = dao.recommendList(conn, pageVo);
		}
		
		close(conn);
		
		return recommendList;
	}

	//통합검색
	public List<RegistVo> searchList(String search, PageVo pageVo, String s) {
		
		if(search == null) {
			return null;
		}
		
		Connection conn = null;
		
		List<RegistVo> searchedList = null;
		
		conn = getConnection();
		
		if(s != null) {
			searchedList = dao.searchPopularList(search, conn, pageVo);
		} else {
			searchedList = dao.searchList(search, conn, pageVo);
		}
		
		close(conn);
		
		return searchedList;
	}



}
