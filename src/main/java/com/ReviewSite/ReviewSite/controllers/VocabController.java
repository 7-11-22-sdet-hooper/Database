package com.ReviewSite.ReviewSite.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ReviewSite.ReviewSite.model.Vocab;

@RestController
public class VocabController {
	
	@GetMapping("/")
	public Vocab getVocab() {
		
		Vocab inheritance = new Vocab("OOP", "inheritance", "One of the four pillars of OOP, this solves the problem of redundant code by allowing more specific versions of a class to use an existing implementation of fields or methods");
		return inheritance;
	}
}
	

