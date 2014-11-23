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

import com.ilkerkonar.applications.schoolproject.orm.model.Lesson;

/**
 * @author ilker KONAR, senior software developer
 *
 */

@ManagedBean( name = "lessonService" )
@ApplicationScoped
public class LessonService {

	@PersistenceContext( unitName = "school" )
	private EntityManager	entityManager;

	public List< Lesson > getAllLessons() {

		final TypedQuery< Lesson > namedQuery = entityManager.createNamedQuery( "Lesson.findAll", Lesson.class );

		return namedQuery.getResultList();
	}

	public Lesson getLesson( final Long no ) {

		final TypedQuery< Lesson > namedQuery = entityManager.createNamedQuery( "Lesson.findById", Lesson.class );

		namedQuery.setParameter( "no", no );

		return namedQuery.getSingleResult();
	}

	public void addNewLesson( final Lesson Lesson ) {

		try {
			final UserTransaction transaction = ( UserTransaction ) new InitialContext()
			.lookup( "java:comp/UserTransaction" );

			transaction.begin();

			entityManager.persist( Lesson );
			entityManager.flush();

			transaction.commit();

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void updateLesson( final Lesson Lesson ) {

		try {
			final UserTransaction transaction = ( UserTransaction ) new InitialContext()
			.lookup( "java:comp/UserTransaction" );

			transaction.begin();

			entityManager.merge( Lesson );
			entityManager.flush();

			transaction.commit();

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void removeLesson( final Lesson Lesson ) {

		try {
			final UserTransaction transaction = ( UserTransaction ) new InitialContext()
			.lookup( "java:comp/UserTransaction" );

			transaction.begin();

			final Lesson mergeLesson = entityManager.merge( Lesson );

			entityManager.remove( mergeLesson );
			entityManager.flush();

			transaction.commit();

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
