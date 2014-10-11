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

import com.ilkerkonar.applications.schoolproject.orm.model.Teacher;

/**
 * @author ilker KONAR, senior software developer
 *
 */

@ManagedBean( name = "teacherService" )
@ApplicationScoped
public class TeacherService {

	@PersistenceContext( unitName = "school" )
	private EntityManager	entityManager;

	public List< Teacher > getAllTeachers() {

		final TypedQuery< Teacher > namedQuery = entityManager.createNamedQuery( "Teacher.findAll",
			Teacher.class );

		return namedQuery.getResultList();
	}

	public void addNewTeacher( final Teacher teacher ) {

		try {
			final UserTransaction transaction = ( UserTransaction ) new InitialContext()
			.lookup( "java:comp/UserTransaction" );

			transaction.begin();

			entityManager.persist( teacher );
			entityManager.flush();

			transaction.commit();

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
