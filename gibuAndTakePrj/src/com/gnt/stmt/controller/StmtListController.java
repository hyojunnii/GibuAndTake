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

@WebServlet(urlPatterns = "/corp/stmtList")
public class StmtListController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberVo loginMember = (MemberVo) req.getSession().getAttribute("loginMember");
		
		ArrayList<StmtVo> donaResult = new StmtService().showDona(loginMember);
		ArrayList<StmtVo> exeResult = new StmtService().showExe(donaResult);
		
		req.setAttribute("result", donaResult);
		req.setAttribute("exeResult", exeResult);
		req.getRequestDispatcher("/views/user2/corpStatementList.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String[] exeCnt = req.getParameterValues("exeCnt");
		String[] exeMoney = req.getParameterValues("exeMoney");
		if(exeCnt == null || exeMoney == null) {
			exeCnt = new String[]{""};
			exeMoney = new String[]{""};
		}
		
		int no = ((MemberVo)req.getSession().getAttribute("loginMember")).getNo();
		
		StmtVo vo = new StmtVo();
		vo.setMemberNo(no);
		vo.setExeCnt(String.join(",", exeCnt));
		vo.setExeMoney(String.join(",", exeMoney));
		
		StmtVo updateVo = new StmtService().edit(vo);
		
		if(updateVo != null) {
			req.getSession().setAttribute("updateVo", updateVo);
			resp.sendRedirect("/gibuAndTakePrj/corp/stmtList");
		}else {
			
		}
	}
	
}
