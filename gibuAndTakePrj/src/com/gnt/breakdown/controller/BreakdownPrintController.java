package com.gnt.breakdown.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/member/breakPrint")
public class BreakdownPrintController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//MemberVo m = (MemberVo) req.getSession().getAttribute("loginMember");
		
		//임의로 로그인한 척 하기
		
		req.getRequestDispatcher("/views/user2/donationBreakdownPrint.jsp").forward(req, resp);
	}
}
