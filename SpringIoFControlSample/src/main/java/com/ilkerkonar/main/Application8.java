
package com.ilkerkonar.main;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;

import com.ilkerkonar.IManage;
import com.ilkerkonar.conf.AppConf;

public class Application8 {

	public static void main( final String[] args ) {

		final AbstractApplicationContext applicationContext = new AnnotationConfigApplicationContext( AppConf.class );

		applicationContext.registerShutdownHook();

		final IManage manageBean = applicationContext.getBean( "manage", IManage.class );

		System.out.println( manageBean.manage( 6 ) );
	}
}
