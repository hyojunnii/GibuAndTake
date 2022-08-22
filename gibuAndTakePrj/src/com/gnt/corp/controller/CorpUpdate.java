package com.gnt.corp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gnt.corp.service.corpService;
import com.gnt.corp.vo.corpVo;

@WebServlet(urlPatterns="/corp/corpUpdate")
public class CorpUpdate extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/views/corp/corpUpdate.jsp").forward(req, resp);
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
				req.setCharacterEncoding("UTF-8");
				
				
				String rprName = req.getParameter("rprName");
				String corpName = req.getParameter("corpName");
				String corpPhone = req.getParameter("corpPhone");
				String corpEmail = req.getParameter("corpEmail");
				String corpAddr = req.getParameter("corpAddr");
				String corpType = req.getParameter("corpType");
				String corpText = req.getParameter("corpContent");
			
				
				corpVo cvo = new corpVo();
				
				
				cvo.setName(rprName);
				cvo.setNick(corpName);
				cvo.setPhone(corpPhone);
				cvo.setEmail(corpEmail);
				cvo.setAddr(corpAddr);
				cvo.setContent(corpText);
				cvo.setClasss(corpType);
				
				
				int no2 = ((corpVo)req.getSession().getAttribute("loginMember")).getNo();
				
				corpVo vo = new corpVo();

		
				corpVo updateVo = new corpService().corpUpdate(vo);
				
				//실행결과에 따라 화면 선택
				if(updateVo != null) {
					//성공 화면
					req.getSession().setAttribute("loginMember", updateVo);
					req.getSession().setAttribute("alertMsg", "회원 정보 수정 완료!");
					resp.sendRedirect("/gibuAndTakePrj/member/MemberInfo");
				}else {
					//실패 화면
					req.setAttribute("errorMsg", "회원 정보 수정 실패 !");
					req.getRequestDispatcher("/views/error/errorPage.jsp").forward(req, resp);
				}
	}
}
			

