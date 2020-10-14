package config;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperFactoryBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import mapper.BoardMapper;
import mapper.ContentMapper;
import mapper.UserMapper;
//controller 어노테이션이 셋팅되어 있는 클래스를 controller로 등록한다.
@Configuration
//spring mvc 프로젝트에 관련된 설정을 하는 클래스
@EnableWebMvc

//스캔할 페이지를 지정
@ComponentScan("controller")
@ComponentScan("dao")
@ComponentScan("service")
@PropertySource("WEB-INF/properties/db.properties")
public class ServletAppContext implements WebMvcConfigurer{
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/WEB-INF/views/",".jsp");
	}
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/**").addResourceLocations("/resources/");
	}

	
	@Value("${db.classname}")
	private String db_classname;
	@Value("${db.url}")
	private String db_url;
	@Value("${db.username}")
	private String db_username;
	@Value("${db.password}")
	private String db_password;
	//3) 데이터베이스 접속 정보 관리 (org.apache.commons.dbcp2.BasicDataSource)
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource source = new BasicDataSource();
		source.setDriverClassName(db_classname);
		source.setUrl(db_url);
		source.setUsername(db_username);
		source.setPassword(db_password);
		System.out.println("db");
		return source;
	}
	//4) 쿼리문과 접속 관리하는 객체
	@Bean
	public SqlSessionFactory factory(BasicDataSource source)throws Exception{
		SqlSessionFactoryBean factoryBean=new SqlSessionFactoryBean();
		factoryBean.setDataSource(source);
		SqlSessionFactory factory=factoryBean.getObject();
		System.out.println("sql");
		return factory;
	}
	//5) 쿼리문 실행을 위한 객체 (BoardMapper생성할것)
	@Bean
	public MapperFactoryBean<UserMapper> getUserMapper(SqlSessionFactory factory)throws Exception{
		MapperFactoryBean<UserMapper> factoryBean=new MapperFactoryBean<UserMapper>(UserMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	@Bean
	public MapperFactoryBean<BoardMapper> getBoardMapper(SqlSessionFactory factory)throws Exception{
		MapperFactoryBean<BoardMapper> factoryBean=new MapperFactoryBean<BoardMapper>(BoardMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	@Bean
	public MapperFactoryBean<ContentMapper> getContentMapper(SqlSessionFactory factory)throws Exception{
		MapperFactoryBean<ContentMapper> factoryBean=new MapperFactoryBean<ContentMapper>(ContentMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
}
