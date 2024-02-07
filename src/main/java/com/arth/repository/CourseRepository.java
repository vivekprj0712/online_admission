package com.arth.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.arth.Entity.CourseEntity;

//dataQuery
public interface CourseRepository extends JpaRepository<CourseEntity, Integer>{

}
