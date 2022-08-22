package com.gnt.stmt.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gnt.stmt.service.StmtService;

@WebServlet (urlPatterns = "/corp/stmtList")
public class StmtReController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		ArrayList<StmtVo> list = new StmtReService().selectList();
//		req.setAttribute("list", list);
//		
		req.getRequestDispatcher("/views/user2/corpStatementList.jsp").forward(req, resp);
	}
}
