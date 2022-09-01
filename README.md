# SDET-Hooper interview prep quiz game production staging.

This repository contains mysql scripts for our in-class web game/study tool.
Each push to this repository triggers a series of scripts to rebuild  be executed on our SQL server which will, which provides data to the application itself.
Please changes the contents of `data.sql` for now and append new categories, vocabulary words, and multiple choice questions.

If static test data is needed, a test branch can be cloned which should contain different data but keep the same basic structure.

## schema.sql
- builds db
- creates 'category' table
- creates 'vocab' and 'multiple_choice' tables
- links 'vocab' and ' table to 'category'

## data.sql
- populates all tables
- *edit this file to expand the quiz game 

![DB Deployment](https://user-images.githubusercontent.com/103597670/187296955-d664927e-c1d7-40a2-8f11-7d776b5167f3.png)

Originally uploaded by Nathan
Thank you to Jack, Andrea, Diana, Dilan, Nay Chi, Jon, and David
