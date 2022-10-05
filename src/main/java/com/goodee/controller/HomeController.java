package com.goodee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
// 서블릿 리소스에 넣어서 사용하는 방법
	// 어노테이션으로 일반 클래스에 나는 컨트롤러에요 라는 표시, MVC에서는 컴포넌트 어노테이션을 대신할수 있는애가 많다. 그중에 하나 사용
	
	// 컨트롤러 어노테이션은 컴포넌트와 같음
	// 서블릿에 썼던 리퀘스트 리스폰스 메서드의 역할
	
	// 기존 배우던 서블릿페이지에서 리턴해서 나가는 경로까지 설정해준것.
	
	// 경로를 슬래쉬로 설정
//	컨트롤러 페이지에서 /BBSController 이런식으로 잡아주던 경로가 value = "/" 이다.

		@RequestMapping(value = "/")
		public String home() {
			// 컨트롤러에서 index 스트링을 리턴받아서	/WEB-INF/views/index.jsp 라는 경로를 완성해준다.
			return "Main";
			
		}
	
	
	
}
