/**
 *
 */

package com.ilkerkonar.sample.springretry.conf;

/**
 * @author Ilker KONAR
 *
 * 18 Þub 2015
 *
 * <br/><br/>
 *
 */
public class ProcessImpl implements IProcess {

	/* (non-Javadoc)
	 * @see com.ilkerkonar.sample.springretry.conf.IProcess#doWork()
	 */
	@Override
	public void doWork() {

		final int i = 15;

		System.out.println( "Running doWork" );

		if ( i == 15 ) {
			throw new NullPointerException();
		}
	}

	/* (non-Javadoc)
	 * @see com.ilkerkonar.sample.springretry.conf.IProcess#finishRetry()
	 */
	@Override
	public void finishRetry() {
		System.out.println( "Retry culmination" );
	}

	/* (non-Javadoc)
	 * @see com.ilkerkonar.sample.springretry.conf.IProcess#doWork2()
	 */
	@Override
	public void doWork2() throws Exception {
		final int i = 6;

		System.out.println( "Running doWork2" );

		if ( i == 6 ) {
			throw new Exception();
		}
	}
}
