
package com.ilkerkonar.impl;

import com.ilkerkonar.IManage;
import com.ilkerkonar.IProcess;

public class ManageImpl implements IManage {

	private transient IProcess	process;

	@Override
	public String manage( final int param ) {
		return process.process( param );
	}

	public void init() {
		System.out.println( "Manager Init method has been invoked" );
	}

	public void cleanUp() {
		System.out.println( "Manager Clean-up method has been invoked" );
	}

	public void setProcess( final IProcess process ) {
		this.process = process;
	}
}
