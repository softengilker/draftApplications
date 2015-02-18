
package com.ilkerkonar.spring.dataSample.data;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ilkerkonar.spring.dataSample.model.Member;

public interface MemberRepository extends CrudRepository< Member, Long > {

	List< Member > findByName( final String name );
}
