package com.gnt.stmt.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gnt.member.vo.MemberVo;
import com.gnt.stmt.service.StmtService;
import com.gnt.stmt.vo.StmtVo;

@WebServlet(urlPatterns = "/corp/stmtRe")
public class StmtListController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberVo m = (MemberVo) req.getSession().getAttribute("loginMember");
		
		ArrayList<StmtVo> result = new StmtService().showList(m);
		
		req.getRequestDispatcher("/views/user2/corpStatementRe.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
}
