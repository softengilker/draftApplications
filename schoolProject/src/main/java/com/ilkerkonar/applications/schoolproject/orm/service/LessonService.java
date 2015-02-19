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

import com.ilkerkonar.applications.schoolproject.orm.model.Lesson;

/**
 * @author ilker KONAR, senior software developer
 *
 */

@ManagedBean( name = "lessonService" )
@ApplicationScoped
public class LessonService {

	private static final Logger	LOGGER	= LoggerFactory.getLogger( LessonService.class );

	@PersistenceContext( unitName = "school" )
	private EntityManager		entityManager;

	public List< Lesson > getAllLessons() {

		final TypedQuery< Lesson > namedQuery = entityManager.createNamedQuery( "Lesson.findAll", Lesson.class );

		final List< Lesson > resultList = namedQuery.getResultList();

		LOGGER.info( "All the Lessons are retrieved. Return list : {}", resultList );

		return resultList;
	}

	public Lesson getLesson( final Long no ) {

		final TypedQuery< Lesson > namedQuery = entityManager.createNamedQuery( "Lesson.findById", Lesson.class );

		namedQuery.setParameter( "no", no );

		final Lesson resultObject = namedQuery.getSingleResult();

		LOGGER.info( "The lesson are retrieved. Lesson id : {}, Return lesson : {}", no, resultObject );

		return resultObject;
	}

	public void addNewLesson( final Lesson lesson ) {

		try {
			final UserTransaction transaction = ( UserTransaction ) new InitialContext()
				.lookup( "java:comp/UserTransaction" );

			transaction.begin();

			entityManager.persist( lesson );
			entityManager.flush();

			transaction.commit();

			LOGGER.info( "New lesson is inserted. Lesson object : {}", lesson );

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {

			LOGGER.error( "An error has been occurred while inserting a new lesson.", e );
		}
	}

	public void updateLesson( final Lesson lesson ) {

		try {
			final UserTransaction transaction = ( UserTransaction ) new InitialContext()
				.lookup( "java:comp/UserTransaction" );

			transaction.begin();

			entityManager.merge( lesson );
			entityManager.flush();

			transaction.commit();

			LOGGER.info( "The lesson is updated. Lesson object : {}", lesson );

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {

			LOGGER.error( "An error has been occurred while updating the lesson.", e );
		}
	}

	public void removeLesson( final Lesson lesson ) {

		try {
			final UserTransaction transaction = ( UserTransaction ) new InitialContext()
				.lookup( "java:comp/UserTransaction" );

			transaction.begin();

			final Lesson mergeLesson = entityManager.merge( lesson );

			entityManager.remove( mergeLesson );
			entityManager.flush();

			transaction.commit();

			LOGGER.info( "The lesson is removed. Lesson object : {}", lesson );

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {

			LOGGER.error( "An error has been occurred while removing the lesson.", e );
		}
	}
}
