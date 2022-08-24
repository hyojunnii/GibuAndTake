package com.gnt.pay.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gnt.funding.service.FundingService;
import com.gnt.funding.vo.FundingVo;

@WebServlet(urlPatterns = "/funding/pay")
public class FundingPayController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int num = Integer.parseInt(req.getParameter("num"));
		
		FundingVo fundingvo = new FundingService().selectDetail(num);	
		
		req.setAttribute("fundingvo", fundingvo);
		req.getRequestDispatcher("/views/payment/fundingPay.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getContextPath();
		
		int num = Integer.parseInt(req.getParameter("num"));
		int mno = Integer.parseInt(req.getParameter("mno"));
		int addmoney = Integer.parseInt(req.getParameter("addmoney"));
	
		int result = new FundingService().rewardMoney(num, mno, addmoney);
		
		
		//결과에 따라, 화면 선택
		if(result ==1 ) {
			//성공 -> 목록(alertMsg)
			req.getSession().setAttribute("alertMsg", "펀딩 완료!");
			resp.sendRedirect(path+"/view/funding_detail?type=0&num="+num);
		}else {
			//실패 -> 에러페이지(errorMsg)
			req.setAttribute("errorMsg", "펀딩 실패");
			RequestDispatcher view = req.getRequestDispatcher("/views/error/errorPage.jsp");
			view.forward(req, resp);
		}
	}
}
