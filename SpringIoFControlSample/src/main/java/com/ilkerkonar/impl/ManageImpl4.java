
package com.ilkerkonar.impl;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.annotation.Resource;

import com.ilkerkonar.IManage;
import com.ilkerkonar.IProcess;

public class ManageImpl4 implements IManage {

	@Resource
	private transient IProcess	process;

	@Override
	public String manage( final int param ) {
		return process.process( param );
	}

	@PostConstruct
	public void init() {
		System.out.println( "Manager4 Init method has been invoked" );
	}

	@PreDestroy
	public void cleanUp() {
		System.out.println( "Manager4 Clean-up method has been invoked" );
	}

	public void setProcess( final IProcess process ) {
		this.process = process;
	}
}
