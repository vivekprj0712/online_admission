package com.arth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.arth.Entity.FeedbackEntity;
@Repository
public interface FeedbackRepository extends JpaRepository<FeedbackEntity, Integer> {

}
