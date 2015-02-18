/**
 *
 */

package com.ilkerkonar.sample.springretry.conf;

import org.springframework.retry.annotation.Backoff;
import org.springframework.retry.annotation.Recover;
import org.springframework.retry.annotation.Retryable;

/**
 * @author Ilker KONAR
 *
 * 18 Þub 2015
 *
 * <br/><br/>
 *
 */
public interface IProcess {

	@Retryable( include = NullPointerException.class, maxAttempts = 5, backoff = @Backoff( delay = 1000 ) )
	void doWork();

	@Retryable( maxAttempts = 10, backoff = @Backoff( delay = 500, multiplier = 2.3, maxDelay = 20000 ) )
	void doWork2() throws Exception;

	@Recover
	void finishRetry();
}
