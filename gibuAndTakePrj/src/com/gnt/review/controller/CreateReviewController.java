package com.gnt.review.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.gnt.member.vo.MemberVo;
import com.gnt.review.service.UploadImgService;
import com.gnt.review.vo.ReviewImgVo;
import com.gnt.review.vo.ReviewVo;

@WebServlet(urlPatterns = "/review/create")
public class CreateReviewController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String category = req.getParameter("category");
		req.setAttribute("category", category);
		req.getRequestDispatcher("/views/review/createReview.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String title = req.getParameter("title");
		String editordata = req.getParameter("editordata");
		String category = req.getParameter("category");
		MemberVo m = (MemberVo)req.getSession().getAttribute("loginMember");
		String no = Integer.toString(m.getNo());
		Part f = req.getPart("f");
		
		String savePath = null;
		if(f.getSubmittedFileName().length()!=0) {
			
			String originName = f.getSubmittedFileName();//원본 파일명
			
			InputStream is = f.getInputStream();//인풋 스트림 준비
			BufferedInputStream bis = new BufferedInputStream(is);
			
			
			//아웃풋 스트림 준비
			String realPath = req.getServletContext().getRealPath("/resources/upload");
			String changeName = new UploadImgService().createChangeName(originName);
			savePath = realPath+File.separator+changeName;
			FileOutputStream os = new FileOutputStream(savePath);
			BufferedOutputStream bos = new BufferedOutputStream(os);
			
			byte[] buf = new byte[1024];
			int size = 0;
			while((size = bis.read(buf))!=-1) {
				bos.write(buf, 0, size);
			}
			
			
			bos.flush();
			bis.close();
			bos.close();
		
		}
		
		ReviewImgVo imgVo = new ReviewImgVo();
		imgVo.setUrl(savePath);
		ReviewVo reviewVo = new ReviewVo();
		reviewVo.setmNo(no);
		reviewVo.setRevName(title);
		reviewVo.setRevClass(category);
		reviewVo.setRevContent(editordata);
		
		int result = new UploadImgService().InsertReview(reviewVo,imgVo);
		
		
	}
}
