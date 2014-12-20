
package com.ilkerkonar.conf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;

import com.ilkerkonar.IManage;
import com.ilkerkonar.IProcess;
import com.ilkerkonar.impl.ManageImpl3;
import com.ilkerkonar.impl.ProcessImpl;

@Configuration
// @Component also is working
@PropertySource( "classpath:application.properties" )
public class AppConf2 {

	@Autowired
	Environment	env;

	@Bean( name = "manage", destroyMethod = "cleanUp", initMethod = "init" )
	public IManage manageImplBean() {
		return new ManageImpl3();
	}

	@Lazy
	@Bean( name = "process", destroyMethod = "cleanUp", initMethod = "init" )
	public IProcess processImplBean() {
		return new ProcessImpl( env.getProperty( "process.value" ) );
	}

	@Lazy
	@Bean( name = "selection", destroyMethod = "cleanUp", initMethod = "init" )
	public IProcess processImplBean2() {
		return new ProcessImpl( env.getProperty( "process.value2" ) );
	}
}
