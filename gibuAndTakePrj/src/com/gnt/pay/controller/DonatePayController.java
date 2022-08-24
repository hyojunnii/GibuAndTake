package com.gnt.pay.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gnt.gibu.service.GibuService;
import com.gnt.gibu.vo.GibuVo;
import com.gnt.member.vo.MemberVo;
import com.gnt.pay.service.PayService;
import com.gnt.pay.vo.PayListVo;
import com.gnt.pay.vo.PaymentVo;

@WebServlet(urlPatterns = "/donate/pay")
public class DonatePayController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				
		GibuVo gibuvo = (GibuVo)req.getAttribute("vo");
		req.setAttribute("gibuvo", gibuvo);
		
		MemberVo loginMember = (MemberVo)req.getSession().getAttribute("loginMember");
		
		List<PaymentVo> pVo = new PayService().callPaymentList(loginMember.getNo());
		
		req.setAttribute("list", pVo);
		
		req.getRequestDispatcher("/views/payment/donatePay.jsp").forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int num = Integer.parseInt(req.getParameter("num"));
		int mno = Integer.parseInt(req.getParameter("mno"));
		int addmoney = Integer.parseInt(req.getParameter("addmoney"));
		System.out.println(num + ", " + addmoney +", " + mno);
		
		GibuVo gibuvo = (GibuVo)req.getAttribute("vo");
		String pNo = req.getParameter("pNo");
		String plMoney = req.getParameter("addmoney");
		String regNo = gibuvo.getRegno();
//		PayListVo payListVo = new  
		
		int result1 = new GibuService().donateMoney(num, mno, addmoney);
	}
}
