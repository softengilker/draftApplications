/**
 *
 */

package com.ilkerkonar.sample.springretry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.retry.RetryCallback;
import org.springframework.retry.backoff.FixedBackOffPolicy;
import org.springframework.retry.policy.ExceptionClassifierRetryPolicy;
import org.springframework.retry.support.RetryTemplate;
import org.springframework.stereotype.Service;

/**
 * @author Ilker KONAR, Senior Software Developer
 *
 * <b>Date:</b> Jan 29, 2015
 *
 * <br/><br/>
 *
 * Application service class. In the "callTheWebService" method,
 * the web service client is invoked with retry template
 */
@Service
public class ApplicationService {

	@Autowired
	private FixedBackOffPolicy				fixedBackOffPolicy;

	@Autowired
	private ExceptionClassifierRetryPolicy	exceptionClassifierRetryPolicy;

	@Autowired
	private WebServiceClientSimulation		webServiceClientSimulation;

	public String callTheWebService() {

		final RetryTemplate retryTemplate = new RetryTemplate();

		// Retry configuration
		retryTemplate.setBackOffPolicy( fixedBackOffPolicy );
		retryTemplate.setRetryPolicy( exceptionClassifierRetryPolicy );

		try {
			// Call the web service with retry
			return retryTemplate.execute(
				( RetryCallback< String, ApplicationException > ) retryContext -> webServiceClientSimulation.invoke(),
				retryContext -> "Unsuccess. The retry reached maximum retry count :" + retryContext.getRetryCount() );
		} catch ( final ApplicationException e ) {
			e.printStackTrace();

			return "Exception was been occurred";
		}
	}

	public void setFixedBackOffPolicy( final FixedBackOffPolicy fixedBackOffPolicy ) {
		this.fixedBackOffPolicy = fixedBackOffPolicy;
	}

	public void setExceptionClassifierRetryPolicy( final ExceptionClassifierRetryPolicy exceptionClassifierRetryPolicy ) {
		this.exceptionClassifierRetryPolicy = exceptionClassifierRetryPolicy;
	}

	public void setWebServiceClientSimulation( final WebServiceClientSimulation webServiceClientSimulation ) {
		this.webServiceClientSimulation = webServiceClientSimulation;
	}
}
