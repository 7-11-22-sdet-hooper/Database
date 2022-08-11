package com.ReviewSite.ReviewSite.controllers;

import org.springframework.data.repository.CrudRepository;

import com.ReviewSite.ReviewSite.controllers.Card;

// This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
// CRUD refers Create, Read, Update, Delete

public interface CardRepository extends CrudRepository<Card, Integer> {

}