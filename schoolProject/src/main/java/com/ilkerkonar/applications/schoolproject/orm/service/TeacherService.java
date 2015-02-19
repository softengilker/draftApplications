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

import com.ilkerkonar.applications.schoolproject.orm.model.Teacher;

/**
 * @author ilker KONAR, senior software developer
 *
 */

@ManagedBean( name = "teacherService" )
@ApplicationScoped
public class TeacherService {

	private static final Logger	LOGGER	= LoggerFactory.getLogger( TeacherService.class );

	@PersistenceContext( unitName = "school" )
	private EntityManager		entityManager;

	public List< Teacher > getAllTeachers() {

		final TypedQuery< Teacher > namedQuery = entityManager.createNamedQuery( "Teacher.findAll",
			Teacher.class );

		final List< Teacher > resultList = namedQuery.getResultList();

		LOGGER.info( "All the teachers are retrieved. Return list : {}", resultList );

		return resultList;
	}

	public Teacher getTeacher( final Long no ) {

		final TypedQuery< Teacher > namedQuery = entityManager.createNamedQuery( "Teacher.findById",
			Teacher.class );

		namedQuery.setParameter( "no", no );

		final Teacher resultObject = namedQuery.getSingleResult();

		LOGGER.info( "The teacher are retrieved. Teacher id : {}, Return teacher : {}", no, resultObject );

		return resultObject;
	}

	public void addNewTeacher( final Teacher teacher ) {

		try {
			final UserTransaction transaction = ( UserTransaction ) new InitialContext()
			.lookup( "java:comp/UserTransaction" );

			transaction.begin();

			entityManager.persist( teacher );
			entityManager.flush();

			transaction.commit();

			LOGGER.info( "New teacher is inserted. Teacher object : {}", teacher );

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {

			LOGGER.error( "An error has been occurred while inserting a new teacher.", e );
		}
	}

	public void removeTeacher( final Teacher teacher ) {

		try {
			final UserTransaction transaction = ( UserTransaction ) new InitialContext()
			.lookup( "java:comp/UserTransaction" );

			transaction.begin();

			final Teacher mergeClass = entityManager.merge( teacher );

			entityManager.remove( mergeClass );
			entityManager.flush();

			transaction.commit();

			LOGGER.info( "The teacher is removed. Teacher object : {}", teacher );

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {

			LOGGER.error( "An error has been occurred while removing the teacher.", e );
		}
	}

	public void updateTeacher( final Teacher teacher ) {

		try {
			final UserTransaction transaction = ( UserTransaction ) new InitialContext()
			.lookup( "java:comp/UserTransaction" );

			transaction.begin();

			entityManager.merge( teacher );
			entityManager.flush();

			transaction.commit();

			LOGGER.info( "The teacher is updated. Teacher object : {}", teacher );

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {

			LOGGER.error( "An error has been occurred while updating the teacher.", e );
		}
	}
}
