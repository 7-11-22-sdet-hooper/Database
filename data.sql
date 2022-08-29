#INSERT INTO `test_schema`.`category` VALUES (999, 'TEST CATEGORY');

INSERT INTO `test_schema`.`multiple_choice`
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

INSERT INTO `test_schema`.`vocab`
(`category_id`,
`word`,
`definition`)
VALUES
(999,
'TEST VOCAB WORD',
'TEST DEFINITION');
