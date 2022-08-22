package com.gnt.notice.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static com.gnt.common.JDBCTemplate.*;

import com.gnt.managercategory.vo.CategoryVo;
import com.gnt.notice.vo.NoticeVo;

public class NoticeDao {

	public ArrayList<NoticeVo> selectList(Connection conn) {
		
		String sql = "SELECT N.N_NO ,N.N_TITLE , N.N_CONTENT , N.N_CNT , TO_CHAR(N.N_DATE, 'YY/MM/DD HH:MI') AS N_DATE, TO_CHAR(N.N_MOD, 'YY/MM/DD HH:MI') AS N_MOD , N.STATUS ,MN.MN_NICK AS N_WRITER FROM Notice N JOIN Manager MN ON N.N_WRITER = MN.MN_NO WHERE N.STATUS = 'N' ORDER BY N.N_NO DESC";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<NoticeVo> list = new ArrayList<NoticeVo>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String no = rs.getString("N_NO");
				String title = rs.getString("N_TITLE");
				String content = rs.getString("N_CONTENT");
				String writer = rs.getString("N_WRITER");
				String cnt = rs.getString("N_CNT");
				String date = rs.getString("N_DATE");
				String mod = rs.getString("N_MOD");
				String status = rs.getString("STATUS");
				
				NoticeVo vo = new NoticeVo();
				vo.setNo(no);
				vo.setTitle(title);
				vo.setContent(content);
				vo.setWriter(writer);
				vo.setCnt(cnt);
				vo.setDate(date);
				vo.setMod(mod);
				vo.setStatus(status);
				
				list.add(vo);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return list;
	}

	public int writeNotice(Connection conn, NoticeVo vo) {
		
		String sql = "INSERT INTO NOTICE (N_NO, N_CATE ,N_TITLE ,N_CONTENT ,N_WRITER ) VALUES ( SEQ_NOTICE_NO.NEXTVAL ,?, ? , ? , ?)";
		PreparedStatement pstmt = null;
		int result = 0;
	
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getCate());
			pstmt.setString(2, vo.getTitle());
			pstmt.setString(3, vo.getContent());
			pstmt.setString(4, vo.getWriter());
			
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public List<CategoryVo> selectCategoryList(Connection conn) {
		
		String sql = "SELECT CATEGORY_NO ,CATEGORY_NAME FROM M_CATEGORY";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<CategoryVo> list = new ArrayList<CategoryVo>();
		
		//SQL을 객체에 담기 및 완성
		try {
			pstmt = conn.prepareStatement(sql);
			
			//SQL 실행 및 결과저장
			rs = pstmt.executeQuery();
			
			//rs를 java로 변환
			while(rs.next()) {
				list.add(new CategoryVo(
						rs.getString("CATEGORY_NO")
						  , rs.getString("CATEGORY_NAME")
							));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		//결과 리턴
		return list;
	}

	public int increaseNotice(Connection conn, String num) {
		
		String sql ="UPDATE Notice SET N_CNT = N_CNT+1 WHERE N_NO = ? AND STATUS = 'N'";
		PreparedStatement pstmt = null;
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public NoticeVo selectNum(Connection conn, String num) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		NoticeVo vo = null;
		
		String sql = "SELECT N.N_NO ,N.N_TITLE , N.N_CONTENT , N.N_CNT , N.N_DATE, N.N_MOD, N.STATUS ,MN.MN_NICK AS N_WRITER FROM Notice N JOIN Manager MN ON N.N_WRITER = MN.MN_NO WHERE N.STATUS = 'N' AND N.N_NO = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String no = rs.getString("N_NO");
				String title = rs.getString("N_TITLE");
				String content = rs.getString("N_CONTENT");
				String writer = rs.getString("N_WRITER");
				String cnt = rs.getString("N_CNT");
				String date = rs.getString("N_DATE");
				String mod = rs.getString("N_MOD");
				String status = rs.getString("STATUS");
				
				vo = new NoticeVo();
				vo.setNo(no);
				vo.setTitle(title);
				vo.setContent(content);
				vo.setWriter(writer);
				vo.setCnt(cnt);
				vo.setDate(date);
				vo.setMod(mod);
				vo.setStatus(status);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return vo;
	}

}
