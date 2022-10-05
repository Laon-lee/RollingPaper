package com.goodee.config;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

// Spring MVC프로젝트에 관련된 설정을 하는 클래스
@Configuration
// Controller 어노테이션이 세팅되어 있는 클래스를 등록하는 어노테이션 (컴포넌트 스캔과 같이 움직임)
@EnableWebMvc 
// 스캔할 패키지 지정 , goodee라는 패키지 및 파일들을 모두 읽겠다
@ComponentScan("com.goodee")  // WebMVC를 설정할때 쓰는 스펙정보가 들어있는 인터페이스. 이 안에서 제공하는 스펙들을 설정할 수 있음. 아래있는 메서드들 사용하려고 불러옴

// MyBatis에서 인터페이스 정보를 스캔하도록 어노테이션 설정
// - basePackages : 어디 패키지에서 정보를 읽어 올 것인가.
// - annotationClass : 어떤 어노테이션을 넣었을 시 해당 클래스를 매퍼로 스캔할 것인가.
@MapperScan(basePackages = {"com.goodee.dao"}, annotationClass= org.apache.ibatis.annotations.Mapper.class)
// 사용할 프로퍼티 지정
@PropertySource("/META-INF/properties/db.properties")
public class ServletAppContext implements WebMvcConfigurer{ // 스프링코어에서의 설정이 아닌 MVC에 특화되어있는 설정을 스프링에서 지정할 경우 이 인터페이스를 상속받은 클래스를 선언할 경우 사용 
	// DB Connection과 관련된 정보를 properties에서 field로 가져오기
	// db.properties에 있는 정보가 들어옴
	// 프로퍼티 정보 명시해주면 알아서 필드로 들어옴
	@Value("${db.classname}")
	private String classname;
	@Value("${db.url}")
	private String url;
	@Value("${db.username}")
	private String username;
	@Value("${db.password}")
	private String password;
	
	@Override   
	public void configureViewResolvers(ViewResolverRegistry registry) {
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/WEB-INF/", ".jsp");
	}
	
	@Override 
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		WebMvcConfigurer.super.addResourceHandlers(registry);
		// 호출되는 경로가 전체경로 아래있는 모든 경로일 경우에, 어떤 경로든 호출시 , 하위에 몇개의 경로가 있든 디폴트 경로로 resources를 잡겠다 
		registry.addResourceHandler("/**").addResourceLocations("/resources/");
	}
	
	// 데이터 베이스 접속 정보관리
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource source = new BasicDataSource();
		source.setDriverClassName(classname);
		source.setUrl(url);
		source.setUsername(username);
		source.setPassword(password);
		return source;
	}
	
	// 쿼리문과 접속 관리하는 객체
	@Bean("SqlSessionFactory")
	public SqlSessionFactory factory(BasicDataSource source, ApplicationContext context) throws Exception{
		SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
		// DataSource 설정
		sqlSessionFactoryBean.setDataSource(source);
		// Mapper.xml 설정
		sqlSessionFactoryBean.setMapperLocations(context.getResources("/META-INF/mapper/*.xml"));
		// Bean Alias 어노테이션 설정 위치 읽기 , vo에있는 알리아스를 읽기 위해서 설정
		sqlSessionFactoryBean.setTypeAliasesPackage("com.goodee.vo");
		// properties 설정 정보 활용
		// sqlSessionFactoryBean.setConfigurationProperties(mybatisProperties());
		
		org.apache.ibatis.session.Configuration configuration 
		= new org.apache.ibatis.session.Configuration();
		
		configuration.setMapUnderscoreToCamelCase(true);
		configuration.setCacheEnabled(false);
		configuration.setUseGeneratedKeys(true);
		configuration.setDefaultExecutorType(ExecutorType.REUSE);
		
		sqlSessionFactoryBean.setConfiguration(configuration);
		
		return sqlSessionFactoryBean.getObject();
	}
	
//	@Bean
//	public ReloadableResourceBundleMessageSource messageSource() {
//		ReloadableResourceBundleMessageSource res = new ReloadableResourceBundleMessageSource();
//		
//		res.setBasename("/META-INF/properties/error_message");
//		
//		return res;
//	}
}
