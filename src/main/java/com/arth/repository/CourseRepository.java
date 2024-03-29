package com.arth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.arth.Entity.CourseEntity;

//dataQuery
@Repository
public interface CourseRepository extends JpaRepository<CourseEntity, Integer>{

}
