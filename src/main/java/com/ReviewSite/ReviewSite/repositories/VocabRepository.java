package com.ReviewSite.ReviewSite.repositories;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.ReviewSite.ReviewSite.model.Vocab;


// This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
// CRUD refers Create, Read, Update, Delete

public interface VocabRepository extends CrudRepository<Vocab, Long> {
    public Optional<Iterable<Vocab>> findByCategory(String category);
}