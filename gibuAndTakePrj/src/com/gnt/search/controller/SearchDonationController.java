package com.gnt.search.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/search/donation")
public class SearchDonationController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String category = req.getParameter("c");
		
		//String searched = SearchService().donationSearch(category);
		
		//req.setAttribute("searched", searched);
		req.getRequestDispatcher("/search").forward(req, resp);
		
	}
}
