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

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.ilkerkonar.applications.schoolproject.orm.model.Test;
import com.ilkerkonar.applications.schoolproject.orm.model.TestStudent;

/**
 * @author ilker KONAR, senior software developer
 *
 */

@ManagedBean( name = "testService" )
@ApplicationScoped
public class TestService {

	private static final Logger	LOGGER	= LoggerFactory.getLogger( TestService.class );

	@PersistenceContext( unitName = "school" )
	private EntityManager		entityManager;

	public List< Test > getAllTests() {

		final TypedQuery< Test > namedQuery = entityManager.createNamedQuery( "Test.findAll", Test.class );

		final List< Test > resultList = namedQuery.getResultList();

		LOGGER.info( "All the tests are retrieved. Return list : {}", resultList );

		return resultList;
	}

	public Test getTest( final Long no ) {

		final TypedQuery< Test > namedQuery = entityManager.createNamedQuery( "Test.findById",
			Test.class );

		namedQuery.setParameter( "no", no );

		final Test resultObject = namedQuery.getSingleResult();

		LOGGER.info( "The test are retrieved. Test id : {}, Return test : {}", no, resultObject );

		return resultObject;
	}

	public TestStudent getTestStudent( final Long testNo, final Long studentNo ) {

		final TypedQuery< TestStudent > namedQuery = entityManager.createNamedQuery(
			"TestStudent.findByStudentAndTest", TestStudent.class );

		namedQuery.setParameter( "testnoparam", testNo );
		namedQuery.setParameter( "studentnoparam", studentNo );

		final TestStudent resultObject = namedQuery.getSingleResult();

		LOGGER.info( "The test-student are retrieved. Test id : {}, Student id : {}, Return test-student object: {}",
			new Object[] { testNo, studentNo, resultObject } );

		return resultObject;
	}

	public List< TestStudent > getTestStudents( final Long testNo ) {

		final TypedQuery< TestStudent > namedQuery = entityManager.createNamedQuery( "TestStudent.findByTest",
			TestStudent.class );

		namedQuery.setParameter( "testnoparam", testNo );

		final List< TestStudent > resultList = namedQuery.getResultList();

		LOGGER.info( "All the test-students are retrieved. Test id : {}, Return list : {}", testNo, resultList );

		return resultList;
	}

	public void addNewTest( final Test test ) {

		try {
			final UserTransaction transaction = ( UserTransaction ) new InitialContext()
			.lookup( "java:comp/UserTransaction" );

			transaction.begin();

			entityManager.persist( test );
			entityManager.flush();

			transaction.commit();

			LOGGER.info( "New test is inserted. Test object : {}", test );

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {

			LOGGER.error( "An error has been occurred while inserting the test.", e );
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

			LOGGER.info( "The test is removed. Test object : {}", test );

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {

			LOGGER.error( "An error has been occurred while removing the test", e );
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

			LOGGER.info( "Test is updated. Test object : {}", test );

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {

			LOGGER.error( "An error has been occurred while updating the test", e );
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

			LOGGER.info( "Test-student is updated. Test-student object : {}", testStudent );

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {

			LOGGER.error( "An error has been occurred while updating the test-student", e );
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

			LOGGER.info( "New test-student is inserted. Test Student Object : {}", testStudent );

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {

			LOGGER.error( "An error has been occurred while inserting the test-student", e );
		}
	}
}
