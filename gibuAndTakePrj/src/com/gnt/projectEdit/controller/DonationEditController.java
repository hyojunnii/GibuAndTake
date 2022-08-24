package com.gnt.projectEdit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gnt.corp.vo.corpVo;
import com.gnt.gibu.vo.GibuVo;
import com.gnt.project.vo.DonationVo;
import com.gnt.project.vo.RegistVo;
import com.gnt.projectEdit.service.ProjectEditDataService;
import com.gnt.projectEdit.service.ProjectEditService;

@WebServlet(urlPatterns = "/pm/edit/donation")
public class DonationEditController extends HttpServlet{
	//기부수정페이지 데이터
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//등록번호, 사용자번호 가져오기
		int regNo = 1;
		int mNo = 1;
		
		//GibuVo vo = (GibuVo)req.getSession().getAttribute("gibuvo");
		//int regNo = Integer.parseInt(vo.getRegno());
		
		//corpVo covo = (corpVo)req.getSession().getAttribute("loginCorp");
		//int mNo = covo.getNo();
		
		//서비스 호출
		DonationVo dvo = new ProjectEditDataService().getDonationEdit(regNo, mNo);
		
		if(dvo != null) {
			//수정 페이지 보여주기
			req.getSession().setAttribute("editVo", dvo);
			req.getRequestDispatcher("/views/pm/donationEditForm.jsp").forward(req, resp);
		} else {
			//알림, 상세조회로 돌아가기
			req.getRequestDispatcher("/views/pm/donationEditForm.jsp").forward(req, resp);
			
		}
	}
	
	//기부프로젝트 수정
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		//등록 Vo
		RegistVo rvo = new RegistVo();
		
		DonationVo vo = (DonationVo)req.getSession().getAttribute("editVo");
		corpVo covo = (corpVo)req.getSession().getAttribute("loginCorp");
		String corpNo = Integer.toString(covo.getNo());
		String content = req.getParameter("content");
		String fDate = req.getParameter("fDate");
		
		rvo.setRegNo(vo.getRegNo());
		rvo.setmNo(corpNo);
		rvo.setContent(content);
		rvo.setfDate(fDate);
		
		//기부 Vo
		DonationVo dvo = new DonationVo();
		//donation
		String exeStartDate = req.getParameter("exeStartDate");
		String exeFinishDate = req.getParameter("exeFinishDate");
		String exePerson = req.getParameter("exePerson");
		
		dvo.setdNo(vo.getdNo());
		dvo.setExeSDate(exeStartDate);
		dvo.setExeEDate(exeFinishDate);
		dvo.setPerson(exePerson);
		
		//execute
		String[] exeCategory = req.getParameterValues("exeCategory");
		String[] exeContent = req.getParameterValues("exeContent");
		String[] exeMoney = req.getParameterValues("exeMoney");
		
		dvo.setDonaExecategory(exeCategory);
		dvo.setDonaExecontent(exeContent);
		dvo.setMoney(exeMoney);
		
		int result = new ProjectEditService().donationEdit(rvo, dvo);
		
		if(result == 1) {
			//성공 알림 + 수정페이지
			System.out.println("수정성공");
			resp.sendRedirect(req.getContextPath() + "/pm/edit/donation");
		} else {
			//실패 알림 + 수정페이지
			System.out.println("수정실패");
			resp.sendRedirect(req.getContextPath() + "/pm/edit/donation");
		}
	
	}
}
