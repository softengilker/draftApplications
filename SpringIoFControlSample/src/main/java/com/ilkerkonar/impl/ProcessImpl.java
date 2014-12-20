
package com.ilkerkonar.impl;

import com.ilkerkonar.IProcess;

public class ProcessImpl implements IProcess {

	private final String	value;

	public ProcessImpl( final String value ) {
		this.value = value;
	}

	@Override
	public String process( final int param ) {
		return "Result is : " + param + ", Value is : " + value;
	}

	public void init() {
		System.out.println( "Process Init method has been invoked. Value : " + value );
	}

	public void cleanUp() {
		System.out.println( "Process Clean-up method has been invoked. Value : " + value );
	}
}
