/**
 *
 */

package com.ilkerkonar.spring.dataSample.data;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ilkerkonar.spring.dataSample.model.Group;
import com.ilkerkonar.spring.dataSample.model.Member;

/**
 * @author Ilker KONAR
 *
 * 18 Şub 2015
 *
 * <br/><br/>
 *
 */
public class DbOperationsImpl implements IDbOperations {

	@Autowired
	private GroupRepository		groupRepository;

	@Autowired
	private MemberRepository	memberRepository;

	/* (non-Javadoc)
	 * @see com.ilkerkonar.spring.dataSample.data.IDbOperations#insertToDatabase()
	 */
	@Override
	public void insertToDatabase() {

		// Create a group
		final Group g1 = new Group();
		g1.setCreateUsername( "ilker" );
		g1.setOfferId( 24476 );
		//g1.setCreateDate( new Date() );

		groupRepository.save( g1 );

		if ( g1.getCreateUsername().equals( "ilker" ) ) {
			throw new NullPointerException( "ddsd" );
		}

		// Create a member
		final Member m1 = new Member();
		m1.setName( "nehir" );
		m1.setGroup( g1 );

		memberRepository.save( m1 );

		// Create a member
		final Member m2 = new Member();
		m2.setName( "ali" );
		m2.setGroup( g1 );

		memberRepository.save( m2 );
	}

	@Override
	public List< Member > getMembers() {
		// Find the member by name
		return memberRepository.findByName( "ali" );
	}

	/**
	 * The setter method of the groupRepository
	 *
	 * @param groupRepository
	 *
	 */
	public void setGroupRepository( final GroupRepository groupRepository ) {
		this.groupRepository = groupRepository;
	}

	/**
	 * The setter method of the memberRepository
	 *
	 * @param memberRepository
	 *
	 */
	public void setMemberRepository( final MemberRepository memberRepository ) {
		this.memberRepository = memberRepository;
	}
}
