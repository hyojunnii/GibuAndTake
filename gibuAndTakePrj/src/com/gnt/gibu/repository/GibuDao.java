package com.gnt.gibu.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import static com.gnt.common.JDBCTemplate.*;
import com.gnt.gibu.vo.GibuVo;

public class GibuDao {

	public List<GibuVo> selectList(Connection conn) {
		
		//sql 준비
		String sql = "SELECT * FROM \"User\"";
		
		PreparedStatement pstmt = null;
		List<GibuVo> list  = new ArrayList<GibuVo>();
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				
				String no = rs.getString("U_NO");
				String uclass = rs.getString("U_CLASS");
				String regNum = rs.getString("U_REGNUM");
				String name = rs.getString("U_NAME");
				String id = rs.getString("U_ID");
				String pwd = rs.getString("U_PWD");
				String nick = rs.getString("U_NICK");
				String email = rs.getString("U_EMAIL");
				String phone = rs.getString("U_PHONE");
				
				//테스트
				
				
				
				
//				private String no;			//기업번호
//				private String nick; 		//기업명
//				private String category;	//카테고리(10
//				private String gibuCategory;//상세카테고리
//				private String title;		//제목
//				private String content; 	//내용
//				private String enrollSDate;	//시작날짜
//				private String enrollFDate;	//종료날짜
//				private String modDate;		//마지막수정일자
//				private int cnt;			//조회수
//				private int gMoney;			//목표금액
//				private int pMoney;			//참여금액
				GibuVo vo = new GibuVo();
				vo.setNo(no);
				vo.setGibuCategory(uclass);
				vo.setCategory(regNum);
				vo.setNick(name);
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return list;
	
	}

}
