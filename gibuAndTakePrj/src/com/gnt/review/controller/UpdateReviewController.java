package com.gnt.review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gnt.review.vo.ReviewDetailVo;

@WebServlet(urlPatterns = "/review/update")
public class UpdateReviewController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ReviewDetailVo vo = (ReviewDetailVo)req.getAttribute("ReviewDetailVo");
		
//		int result = new UpdateReviewService.updateReview();
		
		req.getRequestDispatcher("/views/review/updateReview.jsp").forward(req, resp);
	}
}
