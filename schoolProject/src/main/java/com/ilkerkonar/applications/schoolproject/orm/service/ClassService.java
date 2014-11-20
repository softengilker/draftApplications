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

	public SchoolClass getClass( final Long no ) {

		final TypedQuery< SchoolClass > namedQuery = entityManager.createNamedQuery( "SchoolClass.findById",
			SchoolClass.class );

		namedQuery.setParameter( "no", no );

		return namedQuery.getSingleResult();
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

	public void removeClass( final SchoolClass schoolClass ) {

		UserTransaction transaction = null;

		try {
			transaction = ( UserTransaction ) new InitialContext().lookup( "java:comp/UserTransaction" );

			transaction.begin();

			final SchoolClass mergeClass = entityManager.merge( schoolClass );

			entityManager.remove( mergeClass );
			entityManager.flush();

			transaction.commit();

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {

			try {
				transaction.rollback();
			} catch ( IllegalStateException | SecurityException | SystemException e1 ) {
				e1.printStackTrace();
			}
		}
	}
}
