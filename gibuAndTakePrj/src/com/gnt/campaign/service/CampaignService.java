package com.gnt.campaign.service;

import static com.gnt.common.JDBCTemplate.close;
import static com.gnt.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.gnt.campaign.repository.CampaignDao;
import com.gnt.campaign.vo.CampaignVo;

public class CampaignService {

	private final CampaignDao dao = new CampaignDao();
	
	public List<CampaignVo> selectList() {
		Connection conn = null;
		List<CampaignVo> voList = null;
		conn = getConnection();
		//DAO 호출	
			voList = dao.selectList(conn);
			close(conn);
		return voList;
	}

	public int getListCount() {
		Connection conn = null;
		int result = 0;
		conn = getConnection();
		//DAO 호출
			result = dao.getListCount(conn);
			close(conn);
		return result;
	}

	public List<CampaignVo> selectbanner() {
		Connection conn = null;
		List<CampaignVo> voList = null;
		conn = getConnection();
		//DAO 호출	
			voList = dao.selectbanner(conn);
			close(conn);
		return voList;
	}


	
}
