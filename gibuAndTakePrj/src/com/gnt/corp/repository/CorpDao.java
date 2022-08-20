package com.gnt.corp.repository;

import static com.gnt.common.JDBCTemplate.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import com.gnt.corp.vo.corpVo;

public class CorpDao {

	public int corpjoin(corpVo vo, Connection conn) throws Exception {
		
		
		PreparedStatement pstmt = null;
		int result = 0;
	
		try {
		
		//SQL 준비
		String sql = "INSERT INTO corporation (CORP_NO, M_NO,  CORP_CONTENT, CORP_CLASS) VALUES ( SEQ_CORPORATION_CORP_NO.NEXTVAL, SEQ_MEMBER_M_NO.CURRVAL, ?, ?);";
		
		//SQL 객체에 담기
		pstmt = conn.prepareStatement(sql);
		
		//SQL 객체에 담고, SQL 완성하기
		pstmt.setString(1, vo.getContent());
		pstmt.setString(2, vo.getClasss());
		
		//SQL 실행 및 실행결과 받기
		result = pstmt.executeUpdate();
		
		
	} catch (Exception e) {
		//롤백해야함
		throw e;
	} finally {
		//다 쓴 자원 정리하기
		close(pstmt);
	}
	return result;
	
}


}

