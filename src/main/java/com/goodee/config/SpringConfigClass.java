package com.goodee.config;

import javax.servlet.Filter;

import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

// 전체 환경 설정을 해주는 엔트리 클래스(시작점)   Abst어쩌구 : 여러 설정 정보를 담고있는 추상클래스 , 상속받는 클래스를 먼저 읽는다
public class SpringConfigClass extends AbstractAnnotationConfigDispatcherServletInitializer{

	// 프로젝트에서 사용할 Bean들을 정의하기 위한 클래스를 지정한다.
	@Override    // <?> -> 와일드카드 , 어떤 클래스든지 들어 가겠다. 어떤 타입이든지 다 입력받을 수 있도록 만들어 놓은것
	protected Class<?>[] getRootConfigClasses() {
	 // 임의대로 사용할 빈, MVC패턴에서 컴포넌트 형태로 선언해야 할 빈들 말고, 임시적으로 써야할 빈들이 생길 때
	// 그런 빈들을 설정해주기 위한 클래스 위치를 지정해줌, RootAppContext-> 개발 용도가 아닌 임시로 사용할 빈들에 대한 내용들을 적어서 사용하고자 할 때 씀
		return new Class[] {RootAppContext.class};
	}

	// SpringMVC 프로젝트 설정을 위한 클래스를 지정한다.
	@Override
	protected Class<?>[] getServletConfigClasses() {
		// MVC프로젝트를 구성하는데 필요한 모든 설정 정보를 담는 Configuration객체를 선언하는 곳 (클래스를 지정할 때 사용)
		return new Class[] {ServletAppContext.class};
	}

	// DispatcherServlet에 매핑할 요청 주소를 세팅한다.
	@Override		// 서블릿에서 제공하는 스펙, 내가 어떤 주소로 접근을 했을 때, 여기있는 설정 정보를 먹일것이냐.
	protected String[] getServletMappings() { // 사용자가 어떤 주소로 접근을 할 때 현재 설정된 주소로 적용할 것이냐. ("/") 루트로 접근하겠다. 
		return new String[] {"/"};
		// 지금까지 설정했던 정보들을 사용자들이 어떤 url로 접근을 할 때 , 얘네들로 접근할 것이냐
		// 사용자가 어떤 주소로 접근을 하면 니가 말했던 이 설정 먹일래? , 이것을 설정하는것이 이 메서드의 역할
		// "/" -> localhost:8080 주소에있는 해당 주소로 접근했을때!라는 의미로 압축된것
	}
	
	// 파라미터 인코딩 필터 설정
	@Override		// 서블릿할때 utf-8설정해 줬던것을 전역으로 설정하는 것
	protected Filter[] getServletFilters() {
		//전역으로 utf-8설정해주기
		CharacterEncodingFilter encodingFilter = new CharacterEncodingFilter();
		encodingFilter.setEncoding("utf-8");
		return new Filter[] {encodingFilter};
	}
	
	
}
