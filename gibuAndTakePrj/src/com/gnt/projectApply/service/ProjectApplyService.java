package com.gnt.projectApply.service;

import java.sql.Connection;

import static com.gnt.common.JDBCTemplate.*;

import com.gnt.project.vo.CampaignVo;
import com.gnt.project.vo.DonationExecuteVo;
import com.gnt.project.vo.DonationVo;
import com.gnt.project.vo.FundingRewardVo;
import com.gnt.project.vo.FundingVo;
import com.gnt.project.vo.RegistVo;
import com.gnt.projectApply.repository.ProjectApplyDao;

public class ProjectApplyService {

	//기부 프로젝트 신청
	public static int donationApply(RegistVo rvo, DonationVo dvo, DonationExecuteVo devo) {
		//카테고리 들어왔는지 확인
		
		//모금 종료일이 내일 이후인지 확인
		
		int result = 0;
		int result1 = 0;
		int result2 = 0;
		int result3 = 0;
		Connection conn = null;

		conn = getConnection();
		
		result1 = new ProjectApplyDao().registApply(conn, rvo);
		result2 = new ProjectApplyDao().donationApply(conn, dvo);
		for(int i = 0; i < devo.getCategory().length; i++) {
			result3 = new ProjectApplyDao().donationExecuteApply(conn, devo, i);
			if(result3 == 0) {break;}
		}
		//파일테이블도
		
		int num = result1 + result2 + result3;
		if(num == 3) {
			commit(conn);
			result = 1;
		} else {
			rollback(conn);
		}
		return result;
	}

	//펀딩 프로젝트 신청
	public static int fundingApply(RegistVo rvo, FundingVo fvo, FundingRewardVo frvo) {
		//카테고리 들어왔는지 확인
		
		//모금 종료일이 내일 이후인지 확인
		
		int result = 0;
		int result1 = 0;
		int result2 = 0;
		int result3 = 0;
		Connection conn = null;

		conn = getConnection();
		
		result1 = new ProjectApplyDao().registApply(conn, rvo);
		result2 = new ProjectApplyDao().fundingApply(conn, fvo);
		for(int i = 0; i < frvo.getName().length; i++) {
			result3 = new ProjectApplyDao().fundingRewardApply(conn, frvo, i);
			if(result3 == 0) {break;}
		}
		//파일테이블도
		
		int num = result1 + result2 + result3;
		if(num == 3) {
			commit(conn);
			result = 1;
		} else {
			rollback(conn);
		}
		return result;
	}

	//캠페인 프로젝트 신청
	public static int campaignApply(RegistVo rvo, CampaignVo cvo) {
		//카테고리 들어왔는지 확인
		
		//종료일이 내일 이후인지 확인
		
		int result = 0;
		int result1 = 0;
		int result2 = 0;
		Connection conn = null;

		conn = getConnection();
		
		result1 = new ProjectApplyDao().registApply(conn, rvo);
		result2 = new ProjectApplyDao().campaignApply(conn, cvo);
		//파일테이블도
		
		int num = result1 + result2;
		
		if(num == 2) {
			commit(conn);
			result = 1;
		} else {
			rollback(conn);
		}
		return result;
	}


}
