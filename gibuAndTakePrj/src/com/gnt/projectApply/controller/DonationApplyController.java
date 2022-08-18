package com.gnt.projectApply.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gnt.project.vo.DonationExecuteVo;
import com.gnt.project.vo.DonationVo;
import com.gnt.project.vo.RegistVo;
import com.gnt.projectApply.service.ProjectApplyService;

@WebServlet(urlPatterns = "/pm/apply/donation")
public class DonationApplyController extends HttpServlet{
	//기부 신청 페이지 보여주기
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/pm/donationApplyForm.jsp").forward(req, resp);
	}
	
	//기부 신청
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		//파일 Vo
		//Part files = req.getPart("files");
		//AttachmentVo avo = null;
		
		//등록 Vo
		String regCategory = "기부";
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
		
		//기부 Vo
		String category = req.getParameter("category");
		String goalMoney = req.getParameter("goalMoney");
		String exeStartDate = req.getParameter("exeStartDate");
		String exeFinishDate = req.getParameter("exeFinishDate");
		String exePerson = req.getParameter("exePerson");
		
		DonationVo dvo = new DonationVo();
		dvo.setCategory(category);
		dvo.setgMoney(goalMoney);
		dvo.setExeSDate(exeStartDate);
		dvo.setExeEDate(exeFinishDate);
		dvo.setPerson(exePerson);
		
		//집행내역 Vo
		String[] exeCategory = req.getParameterValues("exeCategory");
		String[] exeContent = req.getParameterValues("exeContent");
		String[] exeMoney = req.getParameterValues("exeMoney");
		
		DonationExecuteVo devo = new DonationExecuteVo();
		devo.setCategory(exeCategory);
		devo.setContent(exeContent);
		devo.setMoney(exeMoney);
		
		//서비스 호출
		int result = ProjectApplyService.donationApply(rvo, dvo, devo);
		
		if(result == 1) {
			//성공시 apply/main + 알람
			System.out.println("신청 성공");
			req.setAttribute("alertMsg", "기부프로젝트 신청 성공!");
			resp.sendRedirect(req.getContextPath() + "/pm/apply/main");
		} else {
			//실패시 기존화면(돌아가기..?) + 알람
			System.out.println("신청 실패");
			req.setAttribute("alertMsg", "기부프로젝트 신청 실패");
			resp.sendRedirect(req.getContextPath() + "/pm/apply/donation");
		}
	}
}
