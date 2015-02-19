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

import com.ilkerkonar.applications.schoolproject.orm.model.SchoolClass;

/**
 * @author ilker KONAR, senior software developer
 *
 */

@ManagedBean( name = "classService" )
@ApplicationScoped
public class ClassService {

	private static final Logger	LOGGER	= LoggerFactory.getLogger( ClassService.class );

	@PersistenceContext( unitName = "school" )
	private EntityManager		entityManager;

	public List< SchoolClass > getAllClasses() {

		final TypedQuery< SchoolClass > namedQuery = entityManager.createNamedQuery( "SchoolClass.findAll",
			SchoolClass.class );

		final List< SchoolClass > resultList = namedQuery.getResultList();

		LOGGER.info( "All the Classes are retrieved. Return list : {}", resultList );

		return resultList;
	}

	public SchoolClass getClass( final Long no ) {

		final TypedQuery< SchoolClass > namedQuery = entityManager.createNamedQuery( "SchoolClass.findById",
			SchoolClass.class );

		namedQuery.setParameter( "no", no );

		final SchoolClass resultObject = namedQuery.getSingleResult();

		LOGGER.info( "The class are retrieved. Class id : {}, Return class : {}", no, resultObject );

		return resultObject;
	}

	public void addNewClass( final SchoolClass schoolClass ) {

		try {
			final UserTransaction transaction = ( UserTransaction ) new InitialContext()
			.lookup( "java:comp/UserTransaction" );

			transaction.begin();

			entityManager.persist( schoolClass );
			entityManager.flush();

			transaction.commit();

			LOGGER.info( "New class is inserted. Class object : {}", schoolClass );

		} catch ( SecurityException | IllegalStateException | NamingException | NotSupportedException | SystemException
			| RollbackException | HeuristicMixedException | HeuristicRollbackException e ) {

			LOGGER.error( "An error has been occurred while inserting a new class.", e );
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

			LOGGER.error( "An error has been occurred while removing a class.", e );

			try {
				transaction.rollback();
			} catch ( IllegalStateException | SecurityException | SystemException e1 ) {

				LOGGER.error( "An error has been occurred while rollback.", e1 );
			}
		}
	}
}
