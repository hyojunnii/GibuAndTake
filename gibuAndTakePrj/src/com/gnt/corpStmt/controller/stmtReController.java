package com.gnt.corpStmt.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gnt.corpStmt.service.StmtReService;

@WebServlet (urlPatterns = "/corp/stmtList")
public class StmtReController extends HttpServlet{

	@Overrideㄴ
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		ArrayList<StmtVo> voList = new StmtReService().selectList();
		
		req.getRequestDispatcher("/views/user2/corpStatementList.jsp").forward(req, resp);
	}
}
