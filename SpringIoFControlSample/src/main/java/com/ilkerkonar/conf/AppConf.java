
package com.ilkerkonar.conf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;

import com.ilkerkonar.IManage;
import com.ilkerkonar.IProcess;
import com.ilkerkonar.impl.ManageImpl2;
import com.ilkerkonar.impl.ProcessImpl;

@Configuration
@PropertySource( "classpath:application.properties" )
public class AppConf {

	@Autowired
	Environment	env;

	@Bean( name = "manage", destroyMethod = "cleanUp", initMethod = "init" )
	public IManage manageImplBean() {
		return new ManageImpl2();
	}

	@Bean( name = "process", destroyMethod = "cleanUp", initMethod = "init" )
	public IProcess processImplBean() {
		return new ProcessImpl( env.getProperty( "process.value" ) );
	}
}
