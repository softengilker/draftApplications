/**
 *
 */

package com.ilkerkonar.applications.schoolproject.orm.service;

import java.util.List;

import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.HeuristicMixedException;
import javax.transaction.HeuristicRollbackException;
import javax.transaction.NotSupportedException;
import javax.transaction.RollbackException;
import javax.transaction.SystemException;
import javax.transaction.UserTransaction;

import com.ilkerkonar.applications.schoolproject.orm.model.Test;
import com.ilkerkonar.applications.schoolproject.orm.model.TestStudent;

/**
 * @author ilker KONAR, senior software developer
 *
 */

@ManagedBean( name = "testService" )
@ApplicationScoped
public class TestService {

	@PersistenceContext( unitName = "school" )
	private EntityManager	entityManager;

	public List< Test > getAllTests() {

		final TypedQuery< Test > namedQuery = entityManager.createNamedQuery( "Test.findAll", Test.class );

		return namedQuery.getResultList();
	}

	public Test getTest( final Long no ) {

		final TypedQuery< Test > namedQuery = entityManager.createNamedQuery( "Test.findById",
			Test.class );

		namedQuery.setParameter( "no", no );

		return namedQuery.getSingleResult();
	}

	public TestStudent getTestStudent( final Long testNo, final Long studentNo ) {

		final TypedQuery< TestStudent > namedQuery = entityManager.createNamedQuery(
			"TestStudent.findByStudentAndTest", TestStudent.class );

		namedQuery.setParameter( "testnoparam", testNo );
		namedQuery.setParameter( "studentnoparam", studentNo );

		return namedQuery.getSingleResult();
	}

	public List< TestStudent > getTestStudents( final Long testNo ) {

		final TypedQuery< TestStudent > namedQuery = entityManager.createNamedQuery( "TestStudent.findByTest",
			TestStudent.class );

		namedQuery.setParameter( "testnoparam", testNo );

		return namedQuery.getResultList();
	}

	public void addNewTest( final Test test ) {

		try {
			final UserTransaction transaction = ( UserTransaction ) new InitialContext()
				.lookup( "java:comp/UserTransaction" );

			transaction.begin();

			entityManager.persist( test );
			entityManager.flush();

			transaction.commit();

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void removeTest( final Test test ) {

		try {
			final UserTransaction transaction = ( UserTransaction ) new InitialContext()
				.lookup( "java:comp/UserTransaction" );

			transaction.begin();

			final Test mergeTest = entityManager.merge( test );

			entityManager.remove( mergeTest );
			entityManager.flush();

			transaction.commit();

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void updateTest( final Test test ) {

		try {
			final UserTransaction transaction = ( UserTransaction ) new InitialContext()
				.lookup( "java:comp/UserTransaction" );

			transaction.begin();

			entityManager.merge( test );
			entityManager.flush();

			transaction.commit();

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void updateTestStudent( final TestStudent testStudent ) {

		try {
			final UserTransaction transaction = ( UserTransaction ) new InitialContext()
				.lookup( "java:comp/UserTransaction" );

			transaction.begin();

			entityManager.merge( testStudent );
			entityManager.flush();

			transaction.commit();

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void addNewTestStudent( final TestStudent testStudent ) {

		try {
			final UserTransaction transaction = ( UserTransaction ) new InitialContext()
				.lookup( "java:comp/UserTransaction" );

			transaction.begin();

			entityManager.persist( testStudent );
			entityManager.flush();

			transaction.commit();

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
