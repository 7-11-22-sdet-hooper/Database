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
(998, "OTHER TEST CATEGORY"),
(999, "TEST CATEGORY");

INSERT INTO vocab (`category_id`, `word`, `definition`) VALUES
(7,"inheritance","One of the four pillars of OOP, this solves the problem of redundant code by allowing more specific versions of a class to use an existing implementation of fields/methods."),
(7,"polymorphism","One of the four pillars of OOP, this removes the need for messy, long if/else blocks by letting child classes define their own variations on parent behavior as needed."),
(7,"abstraction","One of the four pillars of OOP, this hides details and complexity from other interacting classes to both simplify and organize code."),
(7,"encapsulation","One of the four pillars of OOP, this focuses on organizing each class's fields and methods so that each class only needs to worry about it's own data and actions necessary to exist."),
(1,"this","Java keyword which disambiguates an object's fields when method parameters have the same name."),
(1,"void","Java keyword indicating a method returns nothing."),
(1,"abstract","Java keyword for:(i) a class that can't be instantiated or (ii) a method whose implementation isn't defined in said class."),
(2,"JOIN","SQL keyword used to recombine tables, usually with one table's foreign key linking together with another table's primary key."),
(2,"USING","SQL keyword indicating a shared column name in joins used as a logical connection between the tables."),
(2,"ORDER BY","SQL phrase indicating a column whose value will determine the sorting order."),
(2,"SELECT","SQL keyword used to specify which columns should be included in a query."),
(1,"public","Java access modifier keyword which allows any class access to a field or method."),
(1,"try-catch","Coding structure which allows the developer to define specific behavior in preparation of a likely error during runtime."),
(7,"constructor","A method used to create a new object of a particular class."),
(7,"class","A blueprint for a logical grouping of methods and fields."),
(3,"Waterfall Method","This SDLC is heavily structured and resistant to change."),
(1,"final","A modifier used for classes, variables, and methods which makes them unchangeable (impossible to inherit or override)."),
(1,"Object","It is an instance of a class."),
(1,"Class","It defines the common variables and methods of a set of objects."),
(1,"","It is an instance of a class."),
(1,"Object",""),
(1,"Object","✅😊😂🤣❤️😍👌😒😘💕😁"),
(999,'TEST VOCAB WORD','TEST DEFINITION'),
(999,'<strong>TEST VOCAB WORD</strong>','TEST DEFINITION'),
(999,'Pneumonoultramicroscopicsilicovolcanoconiosis','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis,');



INSERT INTO multiple_choice (`category_id`, `question`, `a`, `b`, `c`, `d`, `correct_answer`) VALUES
(3,"What does MVP stand for in Project Management?","Minimum Viable Product", "Most Valuable Programmer","Minimal Verbosity Programming","Most Volatile Pikachu","A"),
(1,"Which access modifier is most restrictive?","protected", "public", "private", "final", "C"),
(2,"What keyword is used to combine tables in SQL?","ADD","JOIN","STITCH","COMBINE", "B"),
(3,"What do we use to describe the complexity and performance of an algorithm? ", "Verbosity", "Little S notation", "Big O notation", "Performance Scalability Range", "C"),
(1,"Which Java data structure stores inputs as a key-value pair?", "HashSet", "Binary Tree", "ArrayList", "HashMap", "D"),
(3,"True/False: In Kanban work is done in sprints.","TRUE", "FALSE", NULL,NULL, "B"),
(2,"In SQL, what uniquely identifies records?","Main Key", "Distinct ID", "Primary Key", "Foreign Key", "C"),
(2,"In SQL, which keyword is NOT an aggregate function? ", "MIN()", "AVG()", "COUNT()", "DIV()", "D"),
(4,"Which is white box testing?","A method of software testing in which the tester has limited knowledge of the internal details of the program.", "A method of software testing that examines the functionality of an application without peering into its internal structures or workings.", "A method of software testing that allows testers to inspect and verify the inner workings of a software systems code, infrastructure, and integrations with external systems.","A method of software testing in which test cases, conditions, and data are derived from requirements.", "B"),
(8,"What software uses Human-Readable language(I.E English) to describe testing cases at a high-level?", "Watermelon", "Raspberry Pi", "Guava", "Cucumber", "D"),
(4,"Which of these is NOT a performance test?","Load test", "Stress test", "Unit test", "Spike test", "C"),
(6,"Given 'String headerVar = driver.findElement(By.xpath('PH')).getText();', and also given '<h1 class ='focus'>Quiztion</h1>', what would need to replace PH for headerVar to equal 'Quiztion'? ", '/h1[@class="focus"]', "//h1[@class='focus']", "//h1[@class=focus]", "/h1[@class='focus']", "B"),
(3,"Verification is answering the question of whether the product was built consistent with the design and requirements.", "TRUE", "FALSE", NULL, NULL, "A"),
(3,"Validation is answering the question of whether you're building the right product in the first place.", "TRUE", "FALSE",NULL, NULL, "A"),
(7,"Which option best defines Abstraction?", "Abstraction is the hiding of details and complexity from other interacting classes to both simplify and organize code.", "Abstraction solves the problem of redundant code by allowing child classes to use their parent classes' fields/methods.", "Abstraction is the organization of fields and methods into logical groups, called classes, so that each class only needs to worry about its own data and actions necessary to make its own contributions.", "Abstraction removes the need for messy, long if/else blocks by letting child classes define their own variations on parent behavior as needed.", "A"),
(7,"Which option best defines Encapsulation?", "Encapsulation solves the problem of redundant code by allowing child classes to use their parent classes' fields/methods.", "Encapsulation is the hiding of details and complexity from other interacting classes to both simplify and organize code.", "Encapsulation removes the need for messy, long if/else blocks by letting child classes define their own variations on parent behavior as needed.", "Encapsulation is the organization of fields and methods into logical groups, called classes, so that each class only needs to worry about its own data and actions necessary to make its own contributions.", "D"),
(7,"Which option best defines Inheritance?", "Inheritance is the organization of fields and methods into logical groups, called classes, so that each class only needs to worry about its own data and actions necessary to make its own contributions.", "Inheritance solves the problem of redundant code by allowing child classes to use their parent classes' fields/methods.", "Inheritance is the hiding of details and complexity from other interacting classes to both simplify and organize code.", "Inheritance removes the need for messy, long if/else blocks by letting child classes define their own variations on parent behavior as needed.", "B"),
(7,"Which option best defines Polymorphism?", "Polymorphism is the hiding of details and complexity from other interacting classes to both simplify and organize code.", "Polymorphism is the organization of fields and methods into logical groups, called classes, so that each class only needs to worry about its own data and actions.", "Polymorphism solves the problem of redundant code by allowing child classes to use their parent classes' fields/methods.", "Polymorphism removes the need for messy, long if/else blocks by letting child classes define their own variations on parent behavior as needed.", "D"),
(4,"This testing is generally done after a change, fix or feature addition.", "Accessibility", "Production monitoring", "Regression", "Stress", "C"),
(4,"Test to validate specific behaviors in a focused area within a system.", "Accessibility", "Functional Tests", "Performance", "Unit Tests", "D"),
(4,"Which type of testing is done to verify how well the application works under stress (or above the maximum supported load)?", "Functional Tests", "Stress Tests", "Integration/Service Tests", "Unit Tests", "B"),
(4,"Most often designed and developed by the developers of the application themselves, these tests check behaviors of the application such as web services, database calls, and other API interactions.", "Functional Tests", "Security", "Integration/Service Tests", "Accessibility", "C"),
(4,"Which type of tests check whether the application achieves the output expected?","Performance","Load","Production monitoring","Unit Tests","C"),
(4,"Test to ensure that the application can handle the expected usage (Max users, max concurrent actions, etc).","Load","Regression","Unit Tests","Accessibility","A"),
(4,"This test checks to see if all parts of the program are accessible and if they require any specific augmentations for usage by their target audience.","Stress","Performance","Functional","Accessibility","D"),
(999,'TEST MULTIPLE CHOICE QUESTION','TEST ANSWER A','TEST ANSWER B','TEST ANSWER C','TEST ANSWER D','A');
