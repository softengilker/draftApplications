/**
 *
 */

package com.ilkerkonar.sample.springretry;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;

import com.ilkerkonar.sample.springretry.conf.IProcess;

/**
 * @author Ilker KONAR, Senior Software Developer
 *
 * <b>Date:</b> Jan 29, 2015
 *
 * <br/><br/>
 *
 * Main method class.
 */
public class RunnerClass {

	/**
	 * @param args
	 */
	public static void main( final String[] args ) {

		@SuppressWarnings( "resource" )
		final AbstractApplicationContext ctx = new AnnotationConfigApplicationContext( ApplicationContext.class );

		final ApplicationService service = ctx.getBean( ApplicationService.class );

		System.out.println( service.callTheWebService() );

		final IProcess processBean = ctx.getBean( IProcess.class );

		processBean.doWork();

		try {
			processBean.doWork2();
		} catch ( final Exception e ) {
			System.out.println( "Finish" );
		}
	}
}
