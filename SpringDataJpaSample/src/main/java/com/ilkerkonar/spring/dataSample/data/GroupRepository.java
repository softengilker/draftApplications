
package com.ilkerkonar.spring.dataSample.data;

import org.springframework.data.repository.CrudRepository;

import com.ilkerkonar.spring.dataSample.model.Group;

public interface GroupRepository extends CrudRepository< Group, Long > {

}
