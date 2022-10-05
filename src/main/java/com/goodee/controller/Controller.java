package com.goodee.controller;

import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goodee.service.BBSService;
import com.goodee.vo.LoginVO;

@org.springframework.stereotype.Controller
public class Controller {

	@Autowired
	private BBSService service;
	
	@GetMapping("/signUpController")
	public String inputData(Model model,LoginVO vo) {
		String msg = service.setLoginInfo(vo);
		
		model.addAttribute("msg",msg);
		return "alert";
	}
	
	@GetMapping("/subMain")
	public String sendSubMain() {
		return "subMain";
	}

	@GetMapping("/loginController")
	public String getInfo(Model model,LoginVO vo,HttpServletResponse response) throws Exception {
		String url = service.getLoginInfo(model,vo,response);
		String path = url;
		
		if(url == "Main") {
			String msg = "id나 password, 역할을 확인해주세요.";
			model.addAttribute("msg", msg);
			path = "alert";
		}
		model.addAttribute("url", url);
		return path;
	}
	
	@GetMapping("/saveContentController")
	public String setSave(LoginVO vo) {
		service.setSaveContent(vo);
		return "result";
	}
	
	@PostMapping("/fetch")
	@ResponseBody
	public LoginVO getAnswer(@RequestBody LoginVO vo){
		return service.getContent(vo);
	}
	
}
