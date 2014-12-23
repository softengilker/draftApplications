
package com.ilkerkonar.spring.dataSample.main;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;

import com.ilkerkonar.spring.dataSample.ApplicationContext;
import com.ilkerkonar.spring.dataSample.data.PersonRepository;
import com.ilkerkonar.spring.dataSample.model.Person;

public class ApplicationStarter {

	public static void main( final String[] args ) {

		final AbstractApplicationContext applicationContext = new AnnotationConfigApplicationContext(
			ApplicationContext.class );
		applicationContext.registerShutdownHook();

		final PersonRepository personRepository = applicationContext.getBean( PersonRepository.class );

		// Create a person1.
		final Person p1 = new Person();

		p1.setId( 1L );
		p1.setName( "ilker KONAR" );
		p1.setSalary( 1524.25d );
		p1.setGrade( 56 );

		personRepository.save( p1 );

		try {
			Thread.sleep( 300000L );
		} catch ( final InterruptedException e ) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
