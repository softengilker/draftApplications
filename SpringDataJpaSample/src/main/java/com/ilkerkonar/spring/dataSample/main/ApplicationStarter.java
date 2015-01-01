
package com.ilkerkonar.spring.dataSample.main;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.transaction.annotation.Transactional;

import com.ilkerkonar.spring.dataSample.ApplicationContext;
import com.ilkerkonar.spring.dataSample.data.GroupRepository;
import com.ilkerkonar.spring.dataSample.data.MemberRepository;
import com.ilkerkonar.spring.dataSample.model.Group;
import com.ilkerkonar.spring.dataSample.model.Member;

public class ApplicationStarter {

	public static void main( final String[] args ) {

		final DbOperations dbOperations = new DbOperations();

		//dbOperations.insertToDatabase();

		System.out.println( dbOperations.getMembers() );
	}
}

class DbOperations {

	private final GroupRepository	groupRepository;
	private final MemberRepository	memberRepository;

	public DbOperations() {
		final AbstractApplicationContext applicationContext = new AnnotationConfigApplicationContext(
			ApplicationContext.class );
		applicationContext.registerShutdownHook();

		groupRepository = applicationContext.getBean( GroupRepository.class );
		memberRepository = applicationContext.getBean( MemberRepository.class );
	}

	@Transactional
	public void insertToDatabase() {

		// Create a group
		final Group g1 = new Group();
		g1.setCreateUsername( "ilker" );
		g1.setOfferId( 24476 );
		//g1.setCreateDate( new Date() );

		groupRepository.save( g1 );

		// Create a member
		final Member m1 = new Member();
		m1.setName( "nehir" );
		m1.setGroup( g1 );

		memberRepository.save( m1 );

		// Create a member
		final Member m2 = new Member();
		m2.setName( "ali" );
		m2.setGroup( g1 );

		memberRepository.save( m2 );
	}

	public List< Member > getMembers() {
		// Find the member by name
		return memberRepository.findByName( "ali" );
	}
}
