-- In this part we populate the tables we previously created with possible data that could in the future be obtained from the actual quiz
USE Coderstrust;

INSERT INTO User (first_name,last_name,age,country,email,password)
VALUES ("Fred","Mona",16,"Romania","fred123@gmail.com","password12340"),
("Daniel","Austin",34,"Denmark","dan55@yahoo.com","pass98"),
("Jude","McDowell",40,"Scotland","McDowell55@stud.uni.sc","smh54"),
("Tate","Townsend",19,"Denmark","tate4345@stud.kea.dk","0000"),
("Radhika","Heaton",21,"Bangladesh","rad99@gmail.com","tag78"),
("Lula","Fowler",24,"Denmark","lula5555@stud.cbs.dk","jdhduuiu"),
("Komal","York",29,"India","Komal.89@stud.in","88778"),
("Davina" ,"O'Connor",44,"Denmark","dav34@stud.cph.dk","hih88"),
("Zhane","Corrigan",25,"Bangladesh","zhane@yahoo.com","jih65"),
("Sadie","Maxwell",57,"Denmark","sad.ie.89@yahoo.com","98765");

INSERT INTO Quiz (user_id,result_id,URL,created_at,finished_at)
VALUES (1,2,"https://quiz.tryinteract.com/#/6047a3d3c97a130017e1f0c5","2021-01-06 18:30:07","2021-01-06 18:41:03"),
(2,2,"https://quiz.tryinteract.com/#/6047a3d3c97a130017e1f0c5","2020-02-08 18:50:11","2020-02-08 19:10:03"),
(3,2,"https://quiz.tryinteract.com/#/6047a3d3c97a130017e1f0c5","2021-03-06 18:30:07","2021-03-06 18:41:03"),
(4,1,"https://quiz.tryinteract.com/#/6047a3d3c97a130017e1f0c5","2020-01-06 09:30:07","2020-01-06 09:41:03"),
(5,1,"https://quiz.tryinteract.com/#/6047a3d3c97a130017e1f0c5","2020-01-06 18:20:07","2020-01-06 18:40:03"),
(6,3,"https://quiz.tryinteract.com/#/6047a3d3c97a130017e1f0c5","2021-02-19 10:30:07","2021-02-19 10:41:03"),
(7,1,"https://quiz.tryinteract.com/#/6047a3d3c97a130017e1f0c5","2021-01-05 18:12:08","2021-01-05 18:15:03"),
(8,1,"https://quiz.tryinteract.com/#/6047a3d3c97a130017e1f0c5","2020-12-09 18:30:07","2020-12-09 18:49:03"),
(9,3,"https://quiz.tryinteract.com/#/6047a3d3c97a130017e1f0c5","2021-01-30 08:30:07","2021-01-30 08:41:03"),
(10,2,"https://quiz.tryinteract.com/#/6047a3d3c97a130017e1f0c5","2021-03-06 20:30:07","2021-03-06 20:41:03");

INSERT INTO Question (answer_id_1,answer_id_2,type)
VALUES(1,2,"Creative"),
(3,4,"Creative"),
(5,6,"Creative"),
(7,8,"Creative"),
(9,10,"Development"),
(11,12,"Development"),
(13,14,"Development"),
(15,16,"Development"),
(17,18,"Digital Marketing"),
(19,20,"Digital Marketing"),
(21,22,"Digital Marketing"),
(23,24,"Digital Marketing");

INSERT INTO Answer(question_id,content,points)
VALUES (1,"YES","5"),
(1,"NO","0"),
(2,"YES","5"),
(2,"NO","0"),
(3,"YES","5"),
(3,"NO","0"),
(4,"YES","5"),
(5,"NO","0"),
(6,"YES","5"),
(6,"NO","0"),
(7,"YES","5"),
(7,"NO","0"),
(8,"YES","5"),
(8,"NO","0"),
(9,"YES","5"),
(9,"NO","0"),
(10,"YES","5"),
(10,"NO","0"),
(11,"YES","5"),
(11,"NO","0"),
(12,"YES","5"),
(12,"NO","0");

INSERT INTO Result(type)
VALUES ("Digital Design"),
("Development"),
("Digital and Marketing");

INSERT INTO Course(title,type,number_of_chapters)
VALUES ("Complete Wordpress Course for Beginners", "Development", 18),
("Essential Python Course For Beginners","Development",10),
("Essential Java Course For Beginners","Development",10),
("Build a Web App with Django","Development", 2),
("Computer Science 101","Development",6),
("Web Development for Beginers","Development",13),
("Intro to JavaScript","Development", 9),
("Advanced Python","Development",7),
("Android App Development for Beginners","Development", 6),
("Complete Guide to Facebook Ads Manager", "Digital and Marketing",9),
("Complete SEO for Beginners", "Digital and Marketing", 8),
("Intro to Copywriting", "Digital and Marketing",10),
("Photoshop Essentials", "Digital Design",13 ),
("Build your Resume with Photoshop", "Digital Design",2),
("Learn how to Animate a Logo","Digital Design",3),
("Premiere Pro for Beginers","Digital Design", 8),
("Illustrator Essentials", "Digital Design", 15),
("Logo Design Masterclass", "Digital Design", 15);
