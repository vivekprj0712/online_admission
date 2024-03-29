package com.arth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.arth.Entity.TeacherEntity;
@Repository
public interface TeacherRepository extends JpaRepository<TeacherEntity, Integer>{

}
