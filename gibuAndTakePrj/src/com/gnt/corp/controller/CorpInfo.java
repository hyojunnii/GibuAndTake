package com.gnt.corp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gnt.corp.service.corpService;
import com.gnt.corp.vo.corpVo;
import com.gnt.member.service.MemberService;
import com.gnt.member.vo.MemberVo;

@WebServlet(urlPatterns="/corp/corpInfo")
public class CorpInfo extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/views/corparation/corpSelect.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
				req.setCharacterEncoding("UTF-8");
				
				String corpId = req.getParameter("corpId");
				String corpPwd2 = req.getParameter("corpPwd");
				String rprName = req.getParameter("rprName");
				String corpName = req.getParameter("corpName");
				String compNum= req.getParameter("compNum");
				String corpPhone = req.getParameter("corpPhone");
				String corpEmail = req.getParameter("corpEmail");
				String corpAddr = req.getParameter("corpAddr");
				String corpType = req.getParameter("corpType");
				String corpText = req.getParameter("corpText");
				
				corpVo cvo = new corpVo();
				
				cvo.setId(corpId);
				cvo.setPwd(corpPwd2);
				cvo.setName(rprName);
				cvo.setNick(corpName);
				cvo.setRegnum(compNum);
				cvo.setPhone(corpPhone);
				cvo.setEmail(corpEmail);
				cvo.setAddr(corpAddr);
				cvo.setContent(corpText);
				cvo.setClasss(corpType);
				
				int result = new corpService().corpSelect(cvo);
				
				if(result == 1) {
				req.getRequestDispatcher("/views/corp/corpSelect.jsp").forward(req, resp);
				}
	}

}
