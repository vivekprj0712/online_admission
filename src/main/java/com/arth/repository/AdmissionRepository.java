package com.arth.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.arth.Entity.AdmissionEntity;

@Repository
public interface AdmissionRepository extends JpaRepository<AdmissionEntity, Integer>{
	AdmissionEntity findByEmail(String email);
	
	
	@Query(value = "select * from admissions where perc_12th >= :perc  and category = :category and payment is not null and ( status is null or status = :status)  order by perc_12th desc limit :quota",nativeQuery = true)
	List<AdmissionEntity> findByAdmissionPerc(String category , Float perc,Integer quota,String status);


	
	@Query(value = "select * from admissions where payment is null or status is null" , nativeQuery = true)
	List<AdmissionEntity> findByAdmissionReject();
	

	@Query(value = "select * from admissions where payment is not null and status  = :status" , nativeQuery = true)
	List<AdmissionEntity> findByAdmissionPending(String status);
	
	
	@Query(value = "select * from admissions where  status  = :status" , nativeQuery = true)
	List<AdmissionEntity> findByConfirmAdmission(String status);

}
