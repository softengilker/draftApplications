
package com.ilkerkonar.impl;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.ilkerkonar.IManage;
import com.ilkerkonar.IProcess;

public class ManageImpl3 implements IManage {

	@Autowired
	@Qualifier( "selection" )
	private transient IProcess	process;

	@Override
	public String manage( final int param ) {
		return process.process( param );
	}

	@PostConstruct
	public void init() {
		System.out.println( "Manager3 Init method has been invoked" );
	}

	@PreDestroy
	public void cleanUp() {
		System.out.println( "Manager3 Clean-up method has been invoked" );
	}

	public void setProcess( final IProcess process ) {
		this.process = process;
	}
}
