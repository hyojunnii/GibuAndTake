package com.gnt.projectApply.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gnt.project.vo.FundingRewardVo;
import com.gnt.project.vo.FundingVo;
import com.gnt.project.vo.RegistVo;
import com.gnt.projectApply.service.ProjectApplyService;

@WebServlet(urlPatterns = "/pm/apply/funding")
public class FundingApplyController extends HttpServlet{
	//펀딩 신청 페이지
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/pm/fundingApplyForm.jsp").forward(req, resp);
	}
	
	//펀딩 신청
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		//파일 Vo
		//Part files = req.getPart("files");
		//AttachmentVo avo = null;
		
		//등록 Vo
		String regCategory = "펀딩";
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
		String gMoney = req.getParameter("gMoney");
		
		FundingVo fvo = new FundingVo();
		fvo.setCategory(category);
		fvo.setgMoney(gMoney);
		
		//리워드 Vo
		String[] rName = req.getParameterValues("rName");
		String[] rMoney = req.getParameterValues("rMoney");
		String[] rCount = req.getParameterValues("rCount");
		
		FundingRewardVo frvo = new FundingRewardVo();
		frvo.setName(rName);
		frvo.setMoney(rMoney);
		frvo.setCount(rCount);
		
		//서비스 호출
		int result = ProjectApplyService.fundingApply(rvo, fvo, frvo);
		
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
