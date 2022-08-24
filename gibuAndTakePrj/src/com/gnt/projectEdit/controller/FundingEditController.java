package com.gnt.projectEdit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gnt.corp.vo.corpVo;
import com.gnt.project.vo.FundingVo;
import com.gnt.project.vo.RegistVo;
import com.gnt.projectEdit.service.ProjectEditDataService;
import com.gnt.projectEdit.service.ProjectEditService;

@WebServlet(urlPatterns = "/pm/edit/funding")
public class FundingEditController extends HttpServlet{
	//펀딩수정페이지 데이터
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//등록번호, 사용자번호 가져오기
		int regNo = 8;
		int mNo = 1;
		
		//com.gnt.funding.vo.FundingVo vo = (com.gnt.funding.vo.FundingVo)req.getSession().getAttribute("fundingvo");
		//int regNo = Integer.parseInt(vo.getRegno());
		
		//corpVo covo = (corpVo)req.getSession().getAttribute("loginCorp");
		//int mNo = covo.getNo();
		
		//서비스 호출
		FundingVo fvo = new ProjectEditDataService().getFundingEdit(regNo, mNo);
		
		if(fvo != null) {
			//수정 페이지 보여주기
			req.getSession().setAttribute("editVo", fvo);
			req.getRequestDispatcher("/views/pm/fundingEditForm.jsp").forward(req, resp);
		} else {
			//알림, 상세조회로 돌아가기
			req.getRequestDispatcher("/views/pm/fundingEditForm.jsp").forward(req, resp);
		}
	}
	
	//펀딩프로젝트 수정
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		//등록 Vo
		RegistVo rvo = new RegistVo();
		
		FundingVo vo = (FundingVo)req.getSession().getAttribute("editVo");
		corpVo covo = (corpVo)req.getSession().getAttribute("loginCorp");
		String corpNo = Integer.toString(covo.getNo());
		String content = req.getParameter("content");
		String fDate = req.getParameter("fDate");
		
		rvo.setRegNo(vo.getRegNo());
		rvo.setmNo(corpNo);
		rvo.setContent(content);
		rvo.setfDate(fDate);
		
		//기부 Vo
		FundingVo fvo = new FundingVo();
		//funding
		String gMoney = req.getParameter("gMoney");
		
		fvo.setfNo(vo.getfNo());
		fvo.setgMoney(gMoney);
		
		//reward
		String[] rName = req.getParameterValues("rName");
		String[] rMoney = req.getParameterValues("rMoney");
		String[] rCount = req.getParameterValues("rCount");
		
		fvo.setName(rName);
		fvo.setMoney(rMoney);
		fvo.setCount(rCount);
		
		int result = new ProjectEditService().fundingEdit(rvo, fvo);
		
		if(result == 1) {
			//성공 알림 + 수정페이지
			System.out.println("수정성공");
			resp.sendRedirect(req.getContextPath() + "/pm/edit/funding");
		} else {
			//실패 알림 + 수정페이지
			System.out.println("수정실패");
			resp.sendRedirect(req.getContextPath() + "/pm/edit/funding");
		}
	
	}
}
