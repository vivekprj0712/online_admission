package com.arth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;
import com.arth.Entity.StudentEntity;

@Repository
public interface StudentRepository  extends JpaRepository<StudentEntity, Integer>{

	StudentEntity findByEmailAndPassword(String email, String password);
	
	List<StudentEntity> findByFirstName(String firstName);

	List<StudentEntity> findByFirstNameAndLastName(String firstName,String lastName);
	
	StudentEntity findByEmail(String email);
	
	
	
	
}
