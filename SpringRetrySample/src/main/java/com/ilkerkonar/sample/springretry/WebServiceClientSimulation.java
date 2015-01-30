/**
 *
 */

package com.ilkerkonar.sample.springretry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

/**
 * @author Ilker KONAR, Senior Software Developer
 *
 * <b>Date:</b> Jan 29, 2015
 *
 * <br/><br/>
 *
 * Web service client class.
 */
@Service
public class WebServiceClientSimulation {

	private static final String	SIMULATION_RETRY_STR	= "yes";

	@Autowired
	Environment					env;

	public String invoke() throws ApplicationException {

		// Simulate the implementation
		System.out.println( "Web Service was called and executed" );

		if ( env.getRequiredProperty( "simulation.retry" ).equals( SIMULATION_RETRY_STR ) ) {

			// An internal error has been occurred
			throw new ApplicationException();
		}

		return "success";
	}
}
