package com.arth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.arth.Entity.MeritEntity;

@Repository
public interface MeritRepository extends JpaRepository<MeritEntity, Integer> {

}
