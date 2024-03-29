package com.arth.repository;



import org.springframework.data.jpa.repository.JpaRepository;

import com.arth.Entity.AdminEntity;

public interface AdminRepository extends JpaRepository<AdminEntity, Integer> {
	
	AdminEntity findByEmailAndPassword(String email, String password);
	
	AdminEntity findByEmail(String email);
}
