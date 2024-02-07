package com.arth.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.arth.Entity.EnrollmentEntity;

public interface EnrollmentRepository  extends JpaRepository<EnrollmentEntity, Integer>{

}
