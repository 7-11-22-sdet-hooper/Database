package com.ReviewSite.ReviewSite.controllers;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity // This tells Hibernate to make a table out of this class
public class Card {
  @Id
  @GeneratedValue(strategy=GenerationType.AUTO)
  private Integer id;

  private String word;

  private String def;

  public Integer getID() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getWord() {
    return word;
  }

  public void setWord(String word) {
    this.word = word;
  }

  public String getDef() {
    return def;
  }

  public void setDef(String def) {
    this.def = def;
  }
}