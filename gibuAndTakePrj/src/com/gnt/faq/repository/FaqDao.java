package com.gnt.faq.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import static com.gnt.common.JDBCTemplate.*;

import com.gnt.common.PageVo;
import com.gnt.faq.vo.FaqVo;

public class FaqDao {

	public ArrayList<FaqVo> selectList(Connection conn, PageVo pageVo) {
		
		String sql = "SELECT * FROM ( SELECT ROWNUM RNUM , RM.* FROM ( SELECT F.FAQ_NO,  F.FAQ_TITLE , F.FAQ_CONTENT, MN.MN_NICK AS FAQ_WRITER , F.FAQ_DATE FROM FAQ F JOIN Manager MN ON F.FAQ_WRITER = MN.MN_NO  WHERE STATUS = 'N' ORDER BY F.FAQ_NO DESC ) RM ) WHERE RNUM BETWEEN ? AND ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<FaqVo> list = new ArrayList<FaqVo>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int start = (pageVo.getCurrentPage()-1)*pageVo.getBoardLimit() + 1;
			int end = start + pageVo.getBoardLimit() - 1;
			
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String no = rs.getString("FAQ_NO");
				String title = rs.getString("FAQ_TITLE");
				String content = rs.getString("FAQ_CONTENT");
				String writer = rs.getString("FAQ_WRITER");
				String date = rs.getString("FAQ_DATE");
				
				FaqVo vo = new FaqVo();
				vo.setNo(no);
				vo.setTitle(title);
				vo.setContent(content);
				vo.setWriter(writer);
				vo.setDate(date);
				
				list.add(vo);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return list;
		
	}

	public int getCount(Connection conn) {
		String sql = "SELECT COUNT(FAQ_NO) AS COUNT FROM FAQ WHERE STATUS = 'N' AND FAQ_WRITER = 1";
	
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt("COUNT");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return count;
	}

}
