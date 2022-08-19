package com.gnt.breakdown.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gnt.breakdown.service.BreakdownService;

@WebServlet(urlPatterns = "/member/breakList")
public class BreakdownListController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberVo m = (MemberVo) req.getSession().getAttribute("loginMember");
		
		int result = new BreakdownService().showList();
		
		req.getRequestDispatcher("/views/user2/donationBreakdownList.jsp").forward(req, resp);
	}
	
}
