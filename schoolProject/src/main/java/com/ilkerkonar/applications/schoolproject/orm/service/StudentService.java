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

import com.ilkerkonar.applications.schoolproject.orm.model.Student;

/**
 * @author ilker KONAR, senior software developer
 *
 */

@ManagedBean( name = "studentService" )
@ApplicationScoped
public class StudentService {

	private static final Logger	LOGGER	= LoggerFactory.getLogger( StudentService.class );

	@PersistenceContext( unitName = "school" )
	private EntityManager		entityManager;

	public List< Student > getAllStudents() {

		final TypedQuery< Student > namedQuery = entityManager.createNamedQuery( "Student.findAll", Student.class );

		final List< Student > resultList = namedQuery.getResultList();

		LOGGER.info( "All the students are retrieved. Return list : {}", resultList );

		return resultList;
	}

	public Student getStudent( final Long no ) {

		final TypedQuery< Student > namedQuery = entityManager.createNamedQuery( "Student.findById", Student.class );

		namedQuery.setParameter( "no", no );

		final Student resultObject = namedQuery.getSingleResult();

		LOGGER.info( "The student are retrieved. Student id : {}, Return student : {}", no, resultObject );

		return resultObject;
	}

	public void addNewStudent( final Student student ) {

		try {
			final UserTransaction transaction = ( UserTransaction ) new InitialContext()
				.lookup( "java:comp/UserTransaction" );

			transaction.begin();

			entityManager.persist( student );
			entityManager.flush();

			transaction.commit();

			LOGGER.info( "New student is inserted. Student object : {}", student );

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {

			LOGGER.error( "An error has been occurred while inserting a new student.", e );
		}
	}

	public void updateStudent( final Student student ) {

		try {
			final UserTransaction transaction = ( UserTransaction ) new InitialContext()
				.lookup( "java:comp/UserTransaction" );

			transaction.begin();

			entityManager.merge( student );
			entityManager.flush();

			transaction.commit();

			LOGGER.info( "The student is updated. Student object : {}", student );

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {

			LOGGER.error( "An error has been occurred while updating the student.", e );
		}
	}

	public void removeStudent( final Student student ) {

		try {
			final UserTransaction transaction = ( UserTransaction ) new InitialContext()
				.lookup( "java:comp/UserTransaction" );

			transaction.begin();

			final Student mergeStudent = entityManager.merge( student );

			entityManager.remove( mergeStudent );
			entityManager.flush();

			transaction.commit();

			LOGGER.info( "The student is removed. Student object : {}", student );

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {

			LOGGER.error( "An error has been occurred while removing the student.", e );
		}
	}
}
