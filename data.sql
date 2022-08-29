USE test_schema;

# disable foreign key safety (normally prevents TRUNCATE and DELETE or other actions that would break the relationship)
SET FOREIGN_KEY_CHECKS = 0;
# drop all old data
TRUNCATE multiple_choice;
TRUNCATE vocab;
TRUNCATE category;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO category VALUES
(1, "Java"),
(2, "asdfasfasfasdf"),
(3, "Project Manager"),
(4, "Testing"),
(5, "Jenkins"),
(6, "Selenium"),
(7, "OOP"),
(8, "Cucumber"),
(999, "TEST CATEGORY");

INSERT INTO `multiple_choice`
(`category_id`,
`question`,
`a`,
`b`,
`c`,
`d`,
`correct_answer`)
VALUES
(999,
'TEST MULTIPLE CHOICE QUESTION',
'TEST ANSWER A',
'TEST ANSWER B',
'TEST ANSWER C',
'TEST ANSWER D',
'A');

INSERT INTO `vocab`
(`category_id`,
`word`,
`definition`)
VALUES
(999,
'TEST VOCAB WORD',
'TEST DEFINITION');
