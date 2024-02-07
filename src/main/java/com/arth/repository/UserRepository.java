package com.arth.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.arth.Entity.UserEntity;

public interface UserRepository  extends JpaRepository<UserEntity, Integer>{

}
