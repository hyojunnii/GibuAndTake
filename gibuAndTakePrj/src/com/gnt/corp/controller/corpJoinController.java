package com.gnt.corp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gnt.corp.vo.corpVo;
import com.gnt.member.service.MemberService;
import com.gnt.member.vo.MemberVo;

@WebServlet(urlPatterns= "/corp/Join")
public class CorpJoinController extends HttpServlet {
	
	/*
	 * 회원가입 화면 보여주기
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//다른애한테 떠넘기기
		req.getRequestDispatcher("/views/corp/corpJoin.jsp").forward(req, resp);
		
	}
	
	/*
	 * 회원가입 처리
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		String corpId = req.getParameter("corpId");
		String corpPwd = req.getParameter("corpPwd");
		String rprName = req.getParameter("rprName");
		String corpName = req.getParameter("corpName");
		String compNum= req.getParameter("compNum");
		String corpPhone = req.getParameter("corpPhone");
		String corpEmail = req.getParameter("corpEmail");
		String corpAddr = req.getParameter("corpAddr");
		String corpType = req.getParameter("corpType");
		String corpText = req.getParameter("corpText");
		
		MemberVo mvo = new MemberVo();
		corpVo cvo = new corpVo();
		
		mvo.setId(corpId);
		mvo.setPwd(corpPwd);
		mvo.setName(rprName);
		cvo.setCname(corpName);
		mvo.setPhone(corpPhone);
		mvo.setEmail(corpEmail);
		mvo.setAddr(corpAddr);
		cvo.setContent(corpText);
		cvo.setClasss(corpText);
		
		
		
		//객체 이용해서 회원가입 진행
		int result = new MemberService().memberjoin(mvo);
		int result2 = new MemberService().memberjoin(cvo);
		
		//insert 결과를 가지고 화면 선택
		if(result == 1) {
			//회원가입 성공
			resp.sendRedirect("/gibuAndTakePrj/views/member/login.jsp");
		} else {
			//회원가입 실패
			//요청 떠넘기기 할건데 , 다음타자 == 실패화면
			resp.sendRedirect("/gibuAndTakePrj/views/error/errorPage.jsp");
		}
	
	}
}


