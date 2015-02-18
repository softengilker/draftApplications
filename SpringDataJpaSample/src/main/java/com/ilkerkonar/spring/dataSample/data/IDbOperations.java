/**
 *
 */

package com.ilkerkonar.spring.dataSample.data;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.ilkerkonar.spring.dataSample.model.Member;

/**
 * @author Ilker KONAR
 *
 * 18 Şub 2015
 *
 * <br/><br/>
 *
 */
public interface IDbOperations {

	@Transactional
	void insertToDatabase();

	List< Member > getMembers();
}
