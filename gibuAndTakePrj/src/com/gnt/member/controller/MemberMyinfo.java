package com.gnt.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gnt.member.service.MemberService;
import com.gnt.member.vo.MemberVo;

@WebServlet(urlPatterns="/member/MemberInfo")
public class MemberMyinfo extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/views/member/memberSelect.jsp").forward(req, resp);
	}
	
	
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
				req.setCharacterEncoding("UTF-8");
				
				String memberId = req.getParameter("memberId");
				String memberName = req.getParameter("memberName");
				String memberNick = req.getParameter("memberNick");
				String memberRegnum= req.getParameter("memberRegnum");
				String memberPhone = req.getParameter("memberPhone");
				String memberEmail = req.getParameter("memberEmail");
				String memberAddr = req.getParameter("memberAddr");
				
				MemberVo vo = new MemberVo();

				vo.setId(memberId);
				vo.setName(memberName);
				vo.setNick(memberNick);
				vo.setRegnum(memberRegnum);
				vo.setPhone(memberPhone);
				vo.setEmail(memberEmail);
				vo.setAddr(memberAddr);
				
				int result = new MemberService().memberSelect(vo);
				
				if(result == 1) {
				req.getRequestDispatcher("/views/member/memberSelect.jsp").forward(req, resp);
				}
	}
}
