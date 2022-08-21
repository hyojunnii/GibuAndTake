package com.gnt.notice.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gnt.notice.service.NoticeService;
import com.gnt.notice.vo.NoticeVo;

@WebServlet(urlPatterns = "/notice/list")
public class NoticeList extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ArrayList<NoticeVo> voList = new NoticeService().selectList();
		
		req.setAttribute("voList", voList);
		req.getRequestDispatcher("/views/notice/noticeList.jsp").forward(req, resp);
	}
}
