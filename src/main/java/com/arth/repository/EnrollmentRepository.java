package com.arth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.arth.Entity.EnrollmentEntity;
@Repository
public interface EnrollmentRepository  extends JpaRepository<EnrollmentEntity, Integer>{

}
