
package com.ilkerkonar.spring.dataSample.data;

import org.springframework.data.repository.CrudRepository;

import com.ilkerkonar.spring.dataSample.model.Person;

public interface PersonRepository extends CrudRepository< Person, Long > {

}
