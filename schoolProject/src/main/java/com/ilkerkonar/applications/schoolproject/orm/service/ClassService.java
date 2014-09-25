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
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.transaction.HeuristicMixedException;
import javax.transaction.HeuristicRollbackException;
import javax.transaction.NotSupportedException;
import javax.transaction.RollbackException;
import javax.transaction.SystemException;
import javax.transaction.UserTransaction;

import com.ilkerkonar.applications.schoolproject.orm.model.SchoolClass;

/**
 * @author ilker KONAR, senior software developer
 *
 */

@ManagedBean( name = "classService" )
@ApplicationScoped
public class ClassService {

	@PersistenceContext( unitName = "school" )
	private EntityManager	entityManager;

	public List< SchoolClass > getAllClasses() {

		final TypedQuery< SchoolClass > namedQuery = entityManager.createNamedQuery( "SchoolClass.findAll",
			SchoolClass.class );

		return namedQuery.getResultList();
	}

	public Long getNewClassSequenceValue() {
		final Query q = entityManager.createNativeQuery( "select nextval('public.class_sequence')" );

		return ( Long ) q.getSingleResult();
	}

	public void addNewClass( final SchoolClass schoolClass ) {

		try {
			final UserTransaction transaction = ( UserTransaction ) new InitialContext()
				.lookup( "java:comp/UserTransaction" );

			transaction.begin();

			entityManager.persist( schoolClass );
			entityManager.flush();

			transaction.commit();

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
