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
		String sql = "SELECT * FROM DONATION ,REGIST";
		
		PreparedStatement pstmt = null;
		List<GibuVo> list  = new ArrayList<GibuVo>();
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				
				//테스트
				
				String dno = rs.getString("D_NO");
				String regno = rs.getString("REG_NO");
				String dclass = rs.getString("D_CLASS");
				String dgmoney = rs.getString("D_GMONEY");
				String dpmoney = rs.getString("D_PMONEY");
				String dsdate = rs.getString("D_SDATE");
				String dedate = rs.getString("D_EDATE");
				String dperson = rs.getString("D_PERSON");
				String mno = rs.getString("M_NO");
				String regclass = rs.getString("REG_CLASS");
				String regname = rs.getString("REG_NAME");
				String regcontent = rs.getString("REG_CONTENT");
				String regsdate = rs.getString("REG_SDATE");
				String regfdate = rs.getString("REG_FDATE");
				String regpass = rs.getString("REG_PASS");
				String regfin = rs.getString("REG_FIN");
				String regdel = rs.getString("REG_DEL");
				String regmod = rs.getString("REG_MOD");
				String regcnt = rs.getString("REG_CNT");
				
				
				GibuVo vo = new GibuVo();
				vo.setDno(dno);
				vo.setRegno(regno);
				vo.setDclass(dclass);
				vo.setDgmoney(dgmoney);
				vo.setDpmoney(dpmoney);
				vo.setDsdate(dsdate);
				vo.setDedate(dedate);
				vo.setDperson(dperson);
				vo.setMno(mno);
				vo.setRegclass(regclass);
				vo.setRegname(regname);
				vo.setRegcontent(regcontent);
				vo.setRegsdate(regsdate);
				vo.setRegfdate(regfdate);
				vo.setRegpass(regpass);
				vo.setRegfin(regfin);
				vo.setRegdel(regdel);
				vo.setRegmod(regmod);
				vo.setRegcnt(regcnt);
				

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
