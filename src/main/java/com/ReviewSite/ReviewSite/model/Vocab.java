package com.ReviewSite.ReviewSite.model;

import javax.annotation.Generated;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
@Entity
public class Vocab {
public String category;
public String word;
public String wordDefinition;

@Id
@GeneratedValue
public long vocab_id;
public Vocab(String category, String word, String wordDefinition) {
	
	this.category = category;
	this.word = word;
	this.wordDefinition = wordDefinition;
}
public Vocab() {
}


}
