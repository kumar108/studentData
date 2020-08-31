package com.Docker.springbootdocker.dao;

import com.Docker.springbootdocker.model.StudentModel;
import org.springframework.data.repository.CrudRepository;

public interface StudentRepo extends CrudRepository<StudentModel,Integer> {
}
