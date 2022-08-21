package com.gnt.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gnt.member.service.MemberService;
import com.gnt.member.vo.MemberVo;

@WebServlet(urlPatterns="/member/MyUpdate")
public class MemberMyUpdate extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/views/member/memberUpdate.jsp").forward(req, resp);
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
				req.setCharacterEncoding("UTF-8");
				
				String memberNick = req.getParameter("memberNick");
				String memberPhone = req.getParameter("memberPhone");
				String memberEmail = req.getParameter("memberEmail");
				String memberAddr = req.getParameter("memberAddr");
				
				int no2 = ((MemberVo)req.getSession().getAttribute("loginMember")).getNo();
				
				MemberVo vo = new MemberVo();

		
				vo.setNick(memberNick);
				vo.setPhone(memberPhone);
				vo.setEmail(memberEmail);
				vo.setAddr(memberAddr);
				
				MemberVo updateVo = new MemberService().memberUpdate(vo);
				
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
			

