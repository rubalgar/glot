package com.ralonso.glot.config;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import com.ralonso.glot.mappers.AgregadoMapper;
import com.ralonso.glot.mappers.FinanzaMapper;
import com.ralonso.glot.services.AgregadoService;
import com.ralonso.glot.services.FinanzaService;


@ComponentScan("com.ralonso.glot")
@Configuration
public class JPAConfig {

    @Bean(name = "dataSource")
    public DataSource dataSource() {
        BasicDataSource datasource = new BasicDataSource();
        //String host = System.getenv("MYSQL_DB_HOST");
        datasource.setDriverClassName("com.mysql.jdbc.Driver");
        //String url = "jdbc:mysql://" + host + "/" + "glot";
        datasource.setUrl("jdbc:mysql://172.30.160.87/glot");
        //datasource.setUrl(url);
        datasource.setUsername("glot");
        datasource.setPassword("tomatito");
        return datasource;
    }

    @Bean(name = "sqlSessionFactoryLots")
    public SqlSessionFactory sqlSessionFactory() throws Exception{
        SqlSessionFactoryBean s = new SqlSessionFactoryBean();
        s.setDataSource(dataSource());
        
        return (SqlSessionFactory) s.getObject();
    }

    @Bean(name = "agregadoMapper")
    public AgregadoMapper agregadoMapper() throws Exception{
    	SqlSessionTemplate sessionTemplate = new SqlSessionTemplate(sqlSessionFactory());
    	sessionTemplate.getConfiguration().addMapper(AgregadoMapper.class);
    	return sessionTemplate.getMapper(AgregadoMapper.class);
    	
    	
    }
    
    @Bean(name = "finanzaMapper")
    public FinanzaMapper finanzaMapper() throws Exception{
    	SqlSessionTemplate sessionTemplate = new SqlSessionTemplate(sqlSessionFactory());
    	sessionTemplate.getConfiguration().addMapper(FinanzaMapper.class);
    	return sessionTemplate.getMapper(FinanzaMapper.class);
    	
    	
    }
    
    @Bean(name = "AgregadoService")
    public AgregadoService agregadoService() throws Exception{
    	AgregadoService agregadoService = new AgregadoService();
    	agregadoService.setAgregadoMapper(agregadoMapper());
    	return agregadoService;
    	
    }
    
    
    @Bean(name = "finanzaService")
    public FinanzaService finanzaService() throws Exception{
    	FinanzaService finanzaService = new FinanzaService();
    	finanzaService.setFinanzaMapper(finanzaMapper());
    	return finanzaService;
    	
    }


}
