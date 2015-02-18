
package com.ilkerkonar.sample.springretry;

import java.util.HashMap;
import java.util.Map;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.retry.RetryPolicy;
import org.springframework.retry.annotation.EnableRetry;
import org.springframework.retry.backoff.FixedBackOffPolicy;
import org.springframework.retry.policy.ExceptionClassifierRetryPolicy;
import org.springframework.retry.policy.SimpleRetryPolicy;

import com.ilkerkonar.sample.springretry.conf.IProcess;
import com.ilkerkonar.sample.springretry.conf.ProcessImpl;

/**
 * @author Ilker KONAR, Senior Software Developer
 *
 * <b>Date:</b> Jan 29, 2015
 *
 * <br/><br/>
 *
 * Spring context configuration class.
 */
@Configuration
@ComponentScan
@PropertySource( "classpath:application.properties" )
@EnableRetry
public class ApplicationContext {

	@Bean
	public FixedBackOffPolicy getBackOffPolicy( final Environment env ) {

		final FixedBackOffPolicy policy = new FixedBackOffPolicy();
		policy.setBackOffPeriod( Long.valueOf( env.getRequiredProperty( "retry.interval" ) ) );

		return policy;
	}

	@Bean
	public ExceptionClassifierRetryPolicy getRetryPolicy( final Environment env ) {

		final Map< Class< ? extends Throwable >, RetryPolicy > policyMap =
			new HashMap< Class< ? extends Throwable >, RetryPolicy >();

		final SimpleRetryPolicy simpleRetryPolicy = new SimpleRetryPolicy();
		simpleRetryPolicy.setMaxAttempts( Integer.valueOf( env.getRequiredProperty( "retry.count" ) ) );

		// Determine the policy per exception
		policyMap.put( ApplicationException.class, simpleRetryPolicy );

		final ExceptionClassifierRetryPolicy retryPolicy = new ExceptionClassifierRetryPolicy();
		retryPolicy.setPolicyMap( policyMap );

		return retryPolicy;
	}

	@Bean
	public WebServiceClientSimulation getWebServiceClient() {
		return new WebServiceClientSimulation();
	}

	@Bean
	public IProcess getProcess() {
		return new ProcessImpl();
	}
}
