package com.gnt.campaignproof.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.gnt.campaignproof.service.CampaignProofService;
import com.gnt.campaignproof.vo.CampaignProofVo;
import com.gnt.corp.vo.corpVo;
import com.gnt.projectApply.service.ProjectApplyService;

@MultipartConfig(
		maxFileSize = 1024 * 1024 * 50, //50mb
		maxRequestSize = 1024 * 1024 * 50 * 5
		)
@WebServlet(urlPatterns = "/campaign/proof")
public class CampaignProofController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		//int mNo = 1;
		//int camNo = 1;
		
		com.gnt.campaign.vo.CampaignVo vo = (com.gnt.campaign.vo.CampaignVo)req.getSession().getAttribute("campaignvo");
		int camNo = Integer.parseInt(vo.getCamno());
		int regNo = Integer.parseInt(vo.getRegno());
		
		corpVo covo = (corpVo)req.getSession().getAttribute("loginCorp");
		int mNo = covo.getNo();
		
		String content = req.getParameter("content");
		
		CampaignProofVo proofVo = new CampaignProofVo();
		proofVo.setmNo(mNo);
		proofVo.setCamNo(camNo);
		proofVo.setContent(content);
		
		Part file = req.getPart("img");
		String savePath = "";
		String changeName = "";
		if(file.getSubmittedFileName().length() > 0) {
			//파일 업로드
			String originName = file.getSubmittedFileName();	//원본 파일명 얻기
			changeName = new ProjectApplyService().createChangeName(originName);
			
			//인풋 스트림 준비
			InputStream is = file.getInputStream();
			BufferedInputStream bis = new BufferedInputStream(is);
			
			//아웃풋 스트림 준비 (서버에 저장)
			String realPath = req.getServletContext().getRealPath("/resources/upload");
			savePath = realPath + File.separator + changeName;
			FileOutputStream os = new FileOutputStream(savePath);
			BufferedOutputStream bos = new BufferedOutputStream(os);
			
			byte[] buf = new byte[1024];
			int size = 0;
			while((size = bis.read(buf)) != -1) {
				bos.write(buf, 0, size);
			}
			
			bos.flush();
			bis.close();
			bos.close();
		}
		
		int result = new CampaignProofService().insertProof(proofVo, changeName);
		
		if(result == 1) {
			//성공알림, 상세페이지
			req.getSession().setAttribute("alertMsg", "캠페인 인증 성공");
			resp.sendRedirect(req.getContextPath() + "/view/campaign_detail?type=0&num=" + regNo);
		} else {
			//실패알림, 상세페이지
			req.getSession().setAttribute("alertMsg", "캠페인 인증 실패");
			resp.sendRedirect(req.getContextPath() + "/view/campaign_detail?type=0&num=" + regNo);
		}
	
	}
}
