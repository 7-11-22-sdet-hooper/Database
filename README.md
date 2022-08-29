# vocabScripts
Scripts for SDET-Hooper interview prep quiz game (testing/development version).
Each push to this repository triggers the scripts to be executed on our SQL server, which provides data to the application itself.
Please changes the contents of `data.sql` for now and append new categories, vocavulary words, and multiple choice questions.
If test data is needed, a test branch can be cloned which should contain different data but keep the same basic structure.

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
