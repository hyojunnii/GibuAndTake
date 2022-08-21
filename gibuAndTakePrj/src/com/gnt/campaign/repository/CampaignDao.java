package com.gnt.campaign.repository;

import static com.gnt.common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.gnt.campaign.vo.CampaignVo;
import com.gnt.gibu.vo.GibuVo;

public class CampaignDao {

	public List<CampaignVo> selectList(Connection conn) {

		// sql 준비
				String sql = "SELECT *  FROM CAMPAIGN C JOIN REGIST R ON C.REG_NO = R.REG_NO JOIN MEMBER M ON R.M_NO = M.M_NO JOIN REGIMG RI ON R.REG_NO = RI.REG_NO  AND R.REG_CLASS = '캠페인' AND R.REG_FIN = 'N' ORDER BY C.CAM_NO DESC";

				PreparedStatement pstmt = null;
				List<CampaignVo> list = new ArrayList<CampaignVo>();
				ResultSet rs = null;
				try {
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					while (rs.next()) {

						// 테스트
						String camno = rs.getString("CAM_NO");
						String regno = rs.getString("REG_NO");
						int camgpeople = rs.getInt("CAM_GPEOPLE");
						int camppeople = rs.getInt("CAM_PPEOPLE");
						
						String regclass = rs.getString("REG_CLASS");
						String regname = rs.getString("REG_NAME");
						String regcontent = rs.getString("REG_CONTENT");
						String regsdate = rs.getString("REG_SDATE");
						String regfdate = rs.getString("REG_FDATE");
						String regpass = rs.getString("REG_PASS");
						String regfin = rs.getString("REG_FIN");
						String regdel = rs.getString("REG_DEL");
						String regmod = rs.getString("REG_MOD");
						int regcnt = rs.getInt("REG_CNT");
						String mno = rs.getString("M_NO");
						String mnick = rs.getString("M_NICK");
						String imgsrc = rs.getString("URL");
						double per = (double) camppeople / (double) camgpeople * 100;
						// 수정완료 퍼센트 구하기
						String moneyper = null;
						if(camppeople == 0) {
							moneyper = "0";
						}else {
							moneyper = String.format("%.1f", per);
						}
						

						CampaignVo vo = new CampaignVo();

						vo.setCamno(camno);
						vo.setRegno(regno);
						vo.setCamgpeople(camgpeople);
						vo.setCamppeople(camppeople);
					
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
						vo.setMno(mno);
						vo.setMnick(mnick);
						vo.setImgsrc(imgsrc);
						vo.setMoneypercent(moneyper);
						list.add(vo);
					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					close(pstmt);
					close(rs);
				}
				return list;
		
		
		
		
		
	}

	public int getListCount(Connection conn) {
		int listcount = 0;
		// sql 준비
		String sql = "SELECT COUNT(*) FROM CAMPAIGN C JOIN REGIST R ON C.REG_NO = R.REG_NO AND R.REG_FIN = 'N'";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				listcount = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

		}
		return listcount;
	}

}
