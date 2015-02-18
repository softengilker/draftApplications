
package com.ilkerkonar.spring.dataSample;

import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.ilkerkonar.spring.dataSample.data.DbOperationsImpl;
import com.ilkerkonar.spring.dataSample.data.IDbOperations;
import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

@Configuration
@EnableJpaRepositories
@EnableTransactionManagement
@PropertySource( "classpath:application.properties" )
public class ApplicationContext {

	/**
	 * You do not have to inject the env. This object can be passed as parameter to the methods
	 */
	//@Autowired
	//Environment	env;

	@Bean( name = "dbprocess" )
	public IDbOperations getDbOperations() {
		return new DbOperationsImpl();
	}

	/**
	 * Creates and configures the HikariCP datasource bean.
	 * @param env   The runtime environment of  our application.
	 * @return
	 */
	@Bean( destroyMethod = "close" )
	public DataSource dataSource( final Environment env ) {

		final HikariConfig dataSourceConfig = new HikariConfig();

		dataSourceConfig.setDriverClassName( env.getRequiredProperty( "db.driver" ) );
		dataSourceConfig.setJdbcUrl( env.getRequiredProperty( "db.url" ) );
		dataSourceConfig.setUsername( env.getRequiredProperty( "db.username" ) );
		dataSourceConfig.setPassword( env.getRequiredProperty( "db.password" ) );

		return new HikariDataSource( dataSourceConfig );
	}

	/**
	 * Creates the bean that creates the JPA entity manager factory.
	 * @param dataSource    The datasource that provides the database connections.
	 * @param env           The runtime environment of  our application.
	 * @return
	 */
	@Bean
	public LocalContainerEntityManagerFactoryBean entityManagerFactory( final DataSource dataSource,
		final Environment env ) {

		final LocalContainerEntityManagerFactoryBean entityManagerFactoryBean = new LocalContainerEntityManagerFactoryBean();

		entityManagerFactoryBean.setDataSource( dataSource );
		entityManagerFactoryBean.setJpaVendorAdapter( new HibernateJpaVendorAdapter() );
		entityManagerFactoryBean.setPackagesToScan( new String[] { "com.ilkerkonar.spring.dataSample" } );

		final Properties jpaProperties = new Properties();

		jpaProperties.put( "hibernate.dialect", env.getRequiredProperty( "hibernate.dialect" ) );
		jpaProperties.put( "hibernate.hbm2ddl.auto", env.getRequiredProperty( "hibernate.hbm2ddl.auto" ) );
		jpaProperties.put( "hibernate.ejb.naming_strategy", env.getRequiredProperty( "hibernate.ejb.naming_strategy" ) );
		jpaProperties.put( "hibernate.format_sql", env.getRequiredProperty( "hibernate.format_sql" ) );
		jpaProperties.put( "hibernate.show_sql", env.getRequiredProperty( "hibernate.show_sql" ) );

		entityManagerFactoryBean.setJpaProperties( jpaProperties );

		return entityManagerFactoryBean;
	}

	/**
	 * Creates the transaction manager bean that integrates the used JPA provider with the
	 * Spring transaction mechanism.
	 * @param entityManagerFactory  The used JPA entity manager factory.
	 * @return
	 */
	@Bean
	public JpaTransactionManager transactionManager( final EntityManagerFactory entityManagerFactory ) {

		final JpaTransactionManager transactionManager = new JpaTransactionManager();
		transactionManager.setEntityManagerFactory( entityManagerFactory );

		return transactionManager;
	}
}
