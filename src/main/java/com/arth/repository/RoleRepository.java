package com.arth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.arth.Entity.RoleEntity;
@Repository
public interface RoleRepository extends JpaRepository<RoleEntity, Integer>{

}
