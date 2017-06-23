package cn.org.cstc.bctest.config;


import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.jdbc.DataSourceBuilder;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import lombok.Data;

@Data
@Configuration
@MapperScan(basePackages="cn.org.cstc.bctest.mapper", sqlSessionFactoryRef = "sqlSessionFactory")
@EnableTransactionManagement
public class DataBaseConfig {
	@Value("${spring.datasource.type}")
	private Class<? extends DataSource> dataSourceType;
	
	@Bean(name="dataSource", destroyMethod = "close", initMethod="init")  
    @ConfigurationProperties(prefix = "spring.datasource")
    public DataSource dataSource() {  
        return DataSourceBuilder.create().type(dataSourceType).build();  
    }  
	
	@Bean(name = "transactionManager")
    public PlatformTransactionManager transactionManager(@Qualifier("dataSource") DataSource dataSource) {
        return new DataSourceTransactionManager(dataSource);
    }
    
    @Bean(name = "sqlSessionFactory")
    public SqlSessionFactory sqlSessionFactory() throws Exception {
        final SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
        sessionFactory.setDataSource(dataSource());
        sessionFactory.setTypeAliasesPackage("cn.org.cstc");
        PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();  
        sessionFactory.getObject().getConfiguration().setMapUnderscoreToCamelCase(true);
        return sessionFactory.getObject();
    }

}
