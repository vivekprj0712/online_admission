package com.arth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.arth.Entity.ContactEntity;

@Repository
public interface ContactRepository extends  JpaRepository<ContactEntity, Integer> {
	
	
	

}
