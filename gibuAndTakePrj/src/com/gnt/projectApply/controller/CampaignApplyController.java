package com.gnt.projectApply.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gnt.project.vo.CampaignVo;
import com.gnt.project.vo.RegistVo;
import com.gnt.projectApply.service.ProjectApplyService;

@WebServlet(urlPatterns = "/pm/apply/campaign")
public class CampaignApplyController extends HttpServlet{
	//캠페인 신청 페이지
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/pm/campaignApplyForm.jsp").forward(req, resp);
	}
	
	//캠페인 신청
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		//파일 Vo
		//Part files = req.getPart("files");
		//AttachmentVo avo = null;
		
		//등록 Vo
		String regCategory = "캠페인";
		// String corpNo = req.getParameter("corpNo"); //사용자번호 받아와야
		String corpNo = "1";
		
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String fDate = req.getParameter("fDate");
		
		RegistVo rvo = new RegistVo();
		rvo.setCategory(regCategory);
		rvo.setuNo(corpNo);
		rvo.setTitle(title);
		rvo.setContent(content);
		rvo.setfDate(fDate);
		
		//펀딩 Vo
		String category = req.getParameter("category");
		String gPeople = req.getParameter("gPeople");
		
		CampaignVo cvo = new CampaignVo();
		cvo.setCategory(category);
		cvo.setgPeople(gPeople);
		
		//서비스 호출
		int result = ProjectApplyService.campaignApply(rvo, cvo);
		
		if(result == 1) {
			//성공시 apply/main + 알람
			System.out.println("신청 성공");
			req.setAttribute("alertMsg", "펀딩프로젝트 신청 성공!");
			resp.sendRedirect(req.getContextPath() + "/pm/apply/main");
		} else {
			//실패시 기존화면 + 알람
			System.out.println("신청 실패");
			req.setAttribute("alertMsg", "펀딩프로젝트 신청 실패");
			resp.sendRedirect(req.getContextPath() + "/pm/apply/funding");
		}
	}
}
