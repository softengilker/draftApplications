/**
 *
 */

package com.ilkerkonar.applications.schoolproject.view;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;

import com.ilkerkonar.applications.schoolproject.orm.model.SchoolClass;
import com.ilkerkonar.applications.schoolproject.orm.model.Student;
import com.ilkerkonar.applications.schoolproject.orm.service.ClassService;
import com.ilkerkonar.applications.schoolproject.orm.type.ProcessType;
import com.ilkerkonar.applications.schoolproject.view.model.ClassView;

/**
 * @author ilker KONAR, senior software developer
 *
 */
@ManagedBean( name = "classBean" )
@ViewScoped
public class ClassBean extends AbstractBean implements Serializable {

	/**
	 *
	 */
	private static final long	serialVersionUID	= -5941571640869756279L;

	private List< ClassView >	classes;

	private String				className;

	private SchoolClass			paramClass;

	@ManagedProperty( "#{classService}" )
	private ClassService		service;

	@PostConstruct
	public void init() {
		reload();
		paramClass = new SchoolClass();
		setModelName( getBundle().getString( "class" ) );
		setInitialMessages();
	}

	/**
	 * @param The setter method of the 'service' instance variable
	 */
	public void setService( final ClassService service ) {
		this.service = service;
	}

	/**
	 * Add a new class
	 */
	public void addNewClass() {

		final SchoolClass newClass = new SchoolClass();
		newClass.setName( getClassName() );

		service.addNewClass( newClass );
		reload();

		setClassName( "" );

		giveInfoMessageAfterAProcess( ProcessType.ADD );
	}

	public void removeClass() {
		final Long classNo = getParamClass().getNo();
		final SchoolClass removeClass = service.getClass( classNo );

		service.removeClass( removeClass );
		reload();

		giveInfoMessageAfterAProcess( ProcessType.DELETE );
	}

	private void reload() {
		// Reload classes.
		final List< SchoolClass > dbClasses = service.getAllClasses();

		classes = new ArrayList< ClassView >();

		for ( final SchoolClass schoolClass : dbClasses ) {

			final ClassView classView = new ClassView();

			classView.setName( schoolClass.getName() );
			classView.setNo( schoolClass.getNo() );

			// Trick for filling the lazying loading list for streaming operations
			List< Student > students = schoolClass.getStudents();
			final int size = students.size();
			students = students.subList( 0, size );

			classView.setTotal( size );
			classView.setMaleTotal( ( int ) students.stream().filter( s -> s.getGender().equals( "male" ) ).count() );
			classView
				.setFemaleTotal( ( int ) students.stream().filter( s -> s.getGender().equals( "female" ) ).count() );

			classes.add( classView );
		}
	}

	/**
	 * @return The getter method of the 'classes' instance variable
	 */
	public List< ClassView > getClasses() {
		return classes;
	}

	/**
	 * @return The getter method of the 'className' instance variable
	 */
	public String getClassName() {
		return className;
	}

	/**
	 * @param The setter method of the 'className' instance variable
	 */
	public void setClassName( final String className ) {
		this.className = className;
	}

	/**
	 * @return The getter method of the 'paramClass' instance variable
	 */
	public SchoolClass getParamClass() {
		return paramClass;
	}

	/**
	 * @param The setter method of the 'paramClass' instance variable
	 */
	public void setParamClass( final SchoolClass paramClass ) {
		this.paramClass = paramClass;
	}

}
