package com.gnt.projectApply.service;

import java.sql.Connection;
import java.util.UUID;

import static com.gnt.common.JDBCTemplate.*;

import com.gnt.project.vo.CampaignVo;
import com.gnt.project.vo.DonationVo;
import com.gnt.project.vo.FundingVo;
import com.gnt.project.vo.RegistVo;
import com.gnt.projectApply.repository.ProjectApplyDao;

public class ProjectApplyService {
	
	private final ProjectApplyDao dao = new ProjectApplyDao();

	//기부 프로젝트 신청
	public int donationApply(RegistVo rvo, DonationVo dvo, String changeName) {
		//카테고리 들어왔는지 확인
		
		//모금 종료일이 내일 이후인지 확인
		
		//사진 들어왔는지 확인
		if(changeName.length() < 1) {
			System.out.println("대표사진 입력 안함");
			return -3;
		}
		
		int result = 0;
		int regist = 0;
		int image = 0;
		int project = 0;
		int subproject = 0;
		
		Connection conn = getConnection();
		
		regist = dao.registApply(conn, rvo);
		System.out.println(regist);
		
		if(regist == 1) {
			image = dao.imageApply(conn, changeName);
			System.out.println(image);
			
			if(image == 1) {
				project = dao.donationApply(conn, dvo);
				System.out.println(project);
				
				if(project == 1) {
					for(int i = 0; i < dvo.getDonaExecategory().length; i++) {
						subproject = dao.donationExecuteApply(conn, dvo, i);
						if(subproject == 0) {break;}
					}
					System.out.println(subproject);
				}
			}
		}
		
		int num = regist + image + project + subproject;
		if(num == 4) {
			commit(conn);
			result = 1;
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	//펀딩 프로젝트 신청
	public int fundingApply(RegistVo rvo, FundingVo fvo, String changeName) {
		//카테고리 들어왔는지 확인
		
		//모금 종료일이 내일 이후인지 확인
		
		//사진 들어왔는지 확인
		if(changeName.length() < 1) {
			System.out.println("대표사진 입력 안함");
			return -3;
		}
		
		int result = 0;
		int regist = 0;
		int image = 0;
		int project = 0;
		int subproject = 0;
		
		Connection conn = getConnection();
		
		regist = dao.registApply(conn, rvo);
		System.out.println(regist);
		
		if(regist == 1) {
			image = dao.imageApply(conn, changeName);
			System.out.println(image);
			
			if(image == 1) {
				project = dao.fundingApply(conn, fvo);
				System.out.println(project);
				
				if(project == 1) {
					for(int i = 0; i < fvo.getName().length; i++) {
						subproject = dao.fundingRewardApply(conn, fvo, i);
						if(subproject == 0) {break;}
					}
					System.out.println(subproject);
				}
			}
		}
		
		int num = regist + image + project + subproject;
		if(num == 4) {
			commit(conn);
			result = 1;
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	//캠페인 프로젝트 신청
	public int campaignApply(RegistVo rvo, CampaignVo cvo, String changeName) {
		//카테고리 들어왔는지 확인
		
		//종료일이 내일 이후인지 확인
		
		//사진 들어왔는지 확인
		if(changeName.length() < 1) {
			System.out.println("대표사진 입력 안함");
			return -3;
		}
		
		int result = 0;
		int regist = 0;
		int image = 0;
		int project = 0;
		
		Connection conn = getConnection();
		
		regist = dao.registApply(conn, rvo);
		System.out.println(regist);
		
		if(regist == 1) {
			image = dao.imageApply(conn, changeName);
			System.out.println(image);
			
			if(image == 1) {
				project = dao.campaignApply(conn, cvo);
				System.out.println(project);
			}
		}
		
		int num = regist + image + project;
		
		if(num == 3) {
			commit(conn);
			result = 1;
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	//파일명 생성
	public String createChangeName(String originName) {
		//확장자 가져오기
		int dotIdx = originName.lastIndexOf(".");
		String ext = originName.substring(dotIdx);
		
		//파일 이름 만들기
		long now = System.currentTimeMillis();
		String random = UUID.randomUUID().toString();
		random = random.substring(0, 8);
		
		String changeName = "GNT_" + now + "_" + random + ext;
		
		return changeName;
	}

}
