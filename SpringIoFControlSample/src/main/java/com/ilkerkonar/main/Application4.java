
package com.ilkerkonar.main;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ilkerkonar.IManage;

public class Application4 {

	public static void main( final String[] args ) {

		@SuppressWarnings( "resource" )
		final AbstractApplicationContext applicationContext = new ClassPathXmlApplicationContext(
			"applicationContext4.xml" );

		applicationContext.registerShutdownHook();

		final IManage manageBean = applicationContext.getBean( "manage", IManage.class );

		System.out.println( manageBean.manage( 6 ) );
	}
}
