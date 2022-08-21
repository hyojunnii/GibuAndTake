package com.gnt.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gnt.member.service.MemberService;
import com.gnt.member.vo.MemberVo;

@WebServlet(urlPatterns = "/member/quit")
public class MemberQuit extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		MemberVo mvo = (MemberVo) req.getSession().getAttribute("loginMember");
		
		String memberId = mvo.getId();
		String memberPwd = mvo.getPwd();		
		
		int result = new MemberService().quit(memberId, memberPwd);
		
		if(result == 1) {
			req.getSession().invalidate();
			req.getSession().setAttribute("alertMsg", "탈퇴 성공!");
			resp.sendRedirect("/gibuAndTakePrj");
		} else {
			req.getSession().setAttribute("alertMsg", "탈퇴 실패");
			resp.sendRedirect("/webMiniPrj/member/mypage");
		}
		
	}
}

