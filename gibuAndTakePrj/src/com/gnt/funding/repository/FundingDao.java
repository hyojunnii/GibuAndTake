package com.gnt.funding.repository;

import static com.gnt.common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.gnt.funding.vo.FundingVo;

public class FundingDao {

	public List<FundingVo> selectList(Connection conn, int type) {

		// sql 준비
		String sql = "SELECT *  FROM FUNDING F JOIN REGIST R ON F.REG_NO = R.REG_NO JOIN MEMBER M ON R.M_NO = M.M_NO JOIN REGIMG RI ON R.REG_NO = RI.REG_NO  AND R.REG_CLASS = '펀딩' AND R.REG_FIN = 'N' ORDER BY F.F_NO DESC";
		String paraclass = "";
		if(type!=0) {
				sql = "SELECT *  FROM FUNDING F JOIN REGIST R ON F.REG_NO = R.REG_NO JOIN MEMBER M ON R.M_NO = M.M_NO JOIN REGIMG RI ON R.REG_NO = RI.REG_NO  AND R.REG_CLASS = '펀딩' AND R.REG_FIN = 'N' AND F.F_CLASS = ? ORDER BY F.F_NO DESC";	
		}
		
		if (type==1) {
			paraclass = "일자리창출"; 
		}else if(type==2) {
			paraclass = "공정무역"; 
		}else if(type==3) {
			paraclass = "친환경"; 
		}else if(type==4) {
			paraclass = "기부"; 
		}else if(type==5) {
			paraclass = "작은가게"; 
		}else if(type==6) {
			paraclass = "미디어"; 
		}else if(type==7) {
			paraclass = "창작자"; 
		}
		
		
		PreparedStatement pstmt = null;
		List<FundingVo> list = new ArrayList<FundingVo>();
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			if(type!=0) {
				pstmt.setString(1, paraclass);				
			}
			rs = pstmt.executeQuery();
			while (rs.next()) {

				// 테스트
				String fno = rs.getString("F_NO");
				String regno = rs.getString("REG_NO");
				String fclass = rs.getString("F_CLASS");
				int fgmoney = rs.getInt("F_GMONEY");
				int fpmoney = rs.getInt("F_PMONEY");
				int fppeople = rs.getInt("F_PPEOPLE");
				
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
				double per = (double) fpmoney / (double) fgmoney * 100;
				// 수정완료 퍼센트 구하기
				String moneyper = String.format("%.1f", per);
				;

				FundingVo vo = new FundingVo();
				vo.setFno(fno);
				vo.setRegno(regno);
				vo.setFclass(fclass);
				vo.setFgmoney(fgmoney);
				vo.setFpmoney(fpmoney);
				vo.setFppeople(fppeople);
				
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

	public int getListCount(Connection conn, int type) {
		int listcount = 0;
		// sql 준비
				String sql = "SELECT COUNT(*) FROM FUNDING F JOIN REGIST R ON F.REG_NO = R.REG_NO AND R.REG_FIN = 'N'";
				String paraclass = "";
				if(type!=0) {
						sql = "SELECT COUNT(*) FROM FUNDING F JOIN REGIST R ON F.REG_NO = R.REG_NO AND R.REG_FIN = 'N' AND F.F_CLASS = ?";	
				}
				
				if (type==1) {
					paraclass = "일자리창출"; 
				}else if(type==2) {
					paraclass = "공정무역"; 
				}else if(type==3) {
					paraclass = "친환경"; 
				}else if(type==4) {
					paraclass = "기부"; 
				}else if(type==5) {
					paraclass = "작은가게"; 
				}else if(type==6) {
					paraclass = "미디어"; 
				}else if(type==7) {
					paraclass = "창작자"; 
				}
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				try {
					pstmt = conn.prepareStatement(sql);
					if(type!=0) {
						pstmt.setString(1, paraclass);				
					}
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

	public List<FundingVo> selectDoneList(Connection conn, int type) {
		// sql 준비
				String sql = "SELECT *  FROM FUNDING F JOIN REGIST R ON F.REG_NO = R.REG_NO JOIN MEMBER M ON R.M_NO = M.M_NO JOIN REGIMG RI ON R.REG_NO = RI.REG_NO  AND R.REG_CLASS = '펀딩' AND R.REG_FIN = 'Y' ORDER BY F.F_NO DESC";
				String paraclass = "";
				if(type!=0) {
						sql = "SELECT *  FROM FUNDING F JOIN REGIST R ON F.REG_NO = R.REG_NO JOIN MEMBER M ON R.M_NO = M.M_NO JOIN REGIMG RI ON R.REG_NO = RI.REG_NO  AND R.REG_CLASS = '펀딩' AND R.REG_FIN = 'Y' AND F.F_CLASS = ? ORDER BY F.F_NO DESC";	
				}
				
				if (type==1) {
					paraclass = "일자리창출"; 
				}else if(type==2) {
					paraclass = "공정무역"; 
				}else if(type==3) {
					paraclass = "친환경"; 
				}else if(type==4) {
					paraclass = "기부"; 
				}else if(type==5) {
					paraclass = "작은가게"; 
				}else if(type==6) {
					paraclass = "미디어"; 
				}else if(type==7) {
					paraclass = "창작자"; 
				}
				
				
				PreparedStatement pstmt = null;
				List<FundingVo> list = new ArrayList<FundingVo>();
				ResultSet rs = null;
				try {
					pstmt = conn.prepareStatement(sql);
					if(type!=0) {
						pstmt.setString(1, paraclass);				
					}
					rs = pstmt.executeQuery();
					while (rs.next()) {

						// 테스트
						String fno = rs.getString("F_NO");
						String regno = rs.getString("REG_NO");
						String fclass = rs.getString("F_CLASS");
						int fgmoney = rs.getInt("F_GMONEY");
						int fpmoney = rs.getInt("F_PMONEY");
						int fppeople = rs.getInt("F_PPEOPLE");
						
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
						double per = (double) fpmoney / (double) fgmoney * 100;
						// 수정완료 퍼센트 구하기
						String moneyper = String.format("%.1f", per);
						;

						FundingVo vo = new FundingVo();
						vo.setFno(fno);
						vo.setRegno(regno);
						vo.setFclass(fclass);
						vo.setFgmoney(fgmoney);
						vo.setFpmoney(fpmoney);
						vo.setFppeople(fppeople);
						
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

	public int getListDoneCount(Connection conn, int type) {
		int listcount = 0;
		// sql 준비
		String sql = "SELECT COUNT(*) FROM FUNDING F JOIN REGIST R ON F.REG_NO = R.REG_NO AND R.REG_FIN = 'Y'";
		String paraclass = "";
		if(type!=0) {
				sql = "SELECT COUNT(*) FROM FUNDING F JOIN REGIST R ON F.REG_NO = R.REG_NO AND R.REG_FIN = 'Y' AND F.F_CLASS = ?";	
		}
		
		if (type==1) {
			paraclass = "일자리창출"; 
		}else if(type==2) {
			paraclass = "공정무역"; 
		}else if(type==3) {
			paraclass = "친환경"; 
		}else if(type==4) {
			paraclass = "기부"; 
		}else if(type==5) {
			paraclass = "작은가게"; 
		}else if(type==6) {
			paraclass = "미디어"; 
		}else if(type==7) {
			paraclass = "창작자"; 
		}
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			if(type!=0) {
				pstmt.setString(1, paraclass);				
			}
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
