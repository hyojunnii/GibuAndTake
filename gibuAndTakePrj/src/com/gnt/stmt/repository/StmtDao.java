package com.gnt.stmt.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import static com.gnt.common.JDBCTemplate.*;
import com.gnt.member.vo.MemberVo;
import com.gnt.stmt.vo.StmtVo;

public class StmtDao {

	public ArrayList<StmtVo> showList(Connection conn, MemberVo m) {
		PreparedStatement donaPstmt = null;
		PreparedStatement exePstmt = null;
		ResultSet donaRs = null;
		ResultSet exeRs = null;
		ArrayList<StmtVo> list = new ArrayList<StmtVo>();
		
		String donaSql = "SELECT D.REG_NO, D_NO, REG_NAME, D_CLASS, D_GMONEY, D_PMONEY, D_SDATE, D_EDATE, D_PERSON FROM DONATION D JOIN REGIST R ON R.REG_NO = D.REG_NO JOIN MEMBER M ON M.M_NO = R.M_NO WHERE M.M_NO = ?";
		String exeSql = "SELECT E_NO, E_CTG, E_CONTENT, E_MONEY FROM EXECUTE E JOIN DONATION D ON D.D_NO = E.D_NO JOIN REGIST R ON R.REG_NO = D.REG_NO JOIN MEMBER M ON M.M_NO = R.M_NO WHERE D.D_NO = ?";
		try {
			donaPstmt = conn.prepareStatement(donaSql);
			donaPstmt.setInt(1, m.getNo());

			donaRs = donaPstmt.executeQuery();
			
			while(donaRs.next()) {
				String regNo = donaRs.getString("REG_NO");
				String donaNo = donaRs.getString("D_NO");
				String regName = donaRs.getString("REG_NAME");
				String donaClass = donaRs.getString("D_CLASS");
				String donaGmoney = donaRs.getString("D_GMONEY");
				String donaPmoney = donaRs.getString("D_PMONEY");
				String donaSdate = donaRs.getString("D_SDATE");
				String donaEdate = donaRs.getString("D_EDATE");
				String donaPerson = donaRs.getString("D_PERSON");
				
				exePstmt = conn.prepareStatement(exeSql);
				exePstmt.setString(1, donaNo);
				
				exeRs = exePstmt.executeQuery();
				
				StmtVo vo = new StmtVo();
				vo.setMemberNo(m.getNo());
				vo.setRegNo(regNo);
				vo.setDonaNo(donaNo);
				vo.setRegName(regName);
				vo.setDonaClass(donaClass);
				vo.setDonaGmomey(donaGmoney);
				vo.setDonaPmoney(donaPmoney);
				vo.setDonaSdate(donaSdate);
				vo.setDonaEdate(donaEdate);
				vo.setDonaPerson(donaPerson);
				
				while(exeRs.next()) {
					String exeNo = exeRs.getString("E_NO");
					String exeCnt = exeRs.getString("E_CONTENT");
					String exeMoney = exeRs.getString("E_MONEY");
					
					vo.setExeNo(exeNo);
					vo.setExeCnt(exeCnt);
					vo.setExeMoney(exeMoney);
				}

				list.add(vo);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(donaPstmt);
			close(exePstmt);
			close(donaRs);
			close(exeRs);
		}
		
		
		return list;
	}

	public int edit(Connection conn, StmtVo vo) {
		String sql = "UPDATE";
		PreparedStatement pstmt = null;
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			
			
		} catch (Exception e) {
			
		} finally {
			close(conn);
		}
		
		return 0;
	}

}
