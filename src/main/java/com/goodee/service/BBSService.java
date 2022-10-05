package com.goodee.service;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.MapperDAO;
import com.goodee.vo.LoginVO;

@Service
public class BBSService {
	@Autowired
	MapperDAO dao;
	
	LoginVO vo = new LoginVO();
	
	public String setLoginInfo(LoginVO vo) {
		String msg ="";
		
		String incodingId = incoding(vo.getId());
		String incodingPW = incoding(vo.getPw());
		String userId = dao.userId(incodingId);
			if(!incodingId.equals(userId)) {
				vo.setId(incodingId);
				vo.setPw(incodingPW);
				dao.insertInfo(vo);
				msg = "가입에 성공하셨습니다!";
			}else {
				msg = "이미 존재하는 아이디 입니다.";
			}
		return msg;
	}
	
	public String getLoginInfo(Model model,LoginVO vo,HttpServletResponse response) throws Exception {
			String url = "";
			
			int i = 0;
			
			String incodingId = incoding(vo.getId());
			String incodingPw = incoding(vo.getPw());
			vo.setId(incodingId);
			vo.setPw(incodingPw);
			
			i = dao.userCheck(vo);
			vo.setNick(dao.userNick(vo));
			
				if(i>0) {
					if(vo.getWho().equals("teacher")) {
						model.addAttribute("content", dao.Content(vo));	
						url = "login_suc";
					}else {
						vo.setNum(dao.userNum(vo));
						url = "login_suc2";
					}
				}else {
					response.setContentType("text/html; charset=UTF-8");
					PrintWriter out = response.getWriter();
					out.println("<script>alert('아이디, 비밀번호, 직업을 확인해주세요.'); history.go(-1);</script>");
					out.flush();
					url="subMain";
				}
				return url;
	}

	public void setSaveContent(LoginVO vo) {
			dao.updateContent(vo);
	}
	
	public LoginVO getContent(LoginVO vo) {
			return dao.Content2(vo);
	}
	public String incoding(String id) {
		char[] charid =id.toCharArray();
		for(int i = 0 ; i < id.length() ;i++) {
			charid[i] += 1123123;
		}
		return String.valueOf(charid);
	}
	public String decoding(String id) {
		char[] charid =id.toCharArray();
		for(int i = 0 ; i < id.length() ;i++) {
			charid[i] -= 1123123;  
		}
		return String.valueOf(charid);
	}
}
