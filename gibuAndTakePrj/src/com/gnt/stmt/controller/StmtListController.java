package com.gnt.stmt.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gnt.corp.vo.corpVo;
import com.gnt.member.vo.MemberVo;
import com.gnt.stmt.service.StmtService;
import com.gnt.stmt.vo.ExeVo;
import com.gnt.stmt.vo.StmtVo;

@WebServlet(urlPatterns = "/corp/stmtList")
public class StmtListController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		corpVo loginCorp = (corpVo) req.getSession().getAttribute("loginCorp");
		
		ArrayList<StmtVo> donaResult = new StmtService().showDona(loginCorp);
		
		System.out.println("donaResult 값 ::: " + donaResult);
		
		String donaNo = null;
		for(int i = 0; i < donaResult.size(); ++i) {
			donaNo = donaResult.get(i).getDonaNo();
		}
		
		ArrayList<ExeVo> exeResult = new StmtService().showExe(donaNo);
		
		req.setAttribute("donaResult", donaResult);
		req.setAttribute("exeResult", exeResult);
		req.getRequestDispatcher("/views/user2/corpStatementList.jsp").forward(req, resp);
	}
	
}
