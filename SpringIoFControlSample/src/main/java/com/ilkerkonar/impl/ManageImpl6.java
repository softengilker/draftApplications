
package com.ilkerkonar.impl;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.inject.Inject;

import com.ilkerkonar.IManage;
import com.ilkerkonar.IProcess;

public class ManageImpl6 implements IManage {

	@Inject
	private transient IProcess	process;

	@Override
	public String manage( final int param ) {
		return process.process( param );
	}

	@PostConstruct
	public void init() {
		System.out.println( "Manager6 Init method has been invoked" );
	}

	@PreDestroy
	public void cleanUp() {
		System.out.println( "Manager6 Clean-up method has been invoked" );
	}

	public void setProcess( final IProcess process ) {
		this.process = process;
	}
}
