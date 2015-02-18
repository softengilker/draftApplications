
package com.ilkerkonar.spring.dataSample.main;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.support.AbstractApplicationContext;

import com.ilkerkonar.spring.dataSample.ApplicationContext;
import com.ilkerkonar.spring.dataSample.data.IDbOperations;

@ComponentScan
public class ApplicationStarter {

	public static void main( final String[] args ) {

		@SuppressWarnings( "resource" )
		final AbstractApplicationContext applicationContext = new AnnotationConfigApplicationContext(
			ApplicationContext.class );
		applicationContext.registerShutdownHook();

		final IDbOperations dbOperations = applicationContext.getBean( "dbprocess", IDbOperations.class );

		dbOperations.insertToDatabase();
	}
}
