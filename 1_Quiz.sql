-- Group 39, Module 4 Case Project, 2021 KEA 
-- In this part of the code we create the database and the tables needed to store the data from the Quiz

CREATE DATABASE IF NOT EXISTS Coderstrust;
USE Coderstrust;
/*
The following lines can be used to delete all the tables in case some of them are not needed 
DROP TABLE User;
DROP TABLE Quiz;
DROP TABLE Question;
DROP TABLE Answer;
DROP TABLE Result;
DROP TABLE Course;
*/

CREATE TABLE IF NOT EXISTS User(
	user_id INTEGER NOT NULL auto_increment,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age INTEGER,
    country TEXT,
    email TEXT,
    password TEXT, -- For more secure storing this could be changed to password_hash and store the encrypted version of the password
    PRIMARY KEY(user_id)
    );

CREATE TABLE IF NOT EXISTS Quiz (
	quiz_id integer NOT NULL auto_increment,
    user_id integer NOT NULL,
    result_id TEXT NOT NULL,
    URL TEXT,
    created_at DATETIME,
    finished_at DATETIME,
    PRIMARY KEY(quiz_id)
);
-- The following 2 tables could also be used to store possible feedback on the quiz by users or to track how many people responded with what answer
CREATE TABLE IF NOT EXISTS Question (
    question_id INTEGER NOT NULL auto_increment,
    answer_id_1 INTEGER NOT NULL,
    answer_id_2 INTEGER NOT NULL,
    type TEXT,
    PRIMARY KEY(question_id)
);

CREATE TABLE IF NOT EXISTS Answer (
    answer_id INTEGER NOT NULL auto_increment,
    question_id INTEGER NOT NULL,
    content TEXT NOT NULL,
    points INTEGER NOT NULL,
    PRIMARY KEY(answer_id)
);

CREATE TABLE IF NOT EXISTS Result(
    result_id INTEGER NOT NULL auto_increment,
    type TEXT,
    PRIMARY KEY(result_id)
);

CREATE TABLE IF NOT EXISTS Course(
	courses_id INTEGER NOT NULL auto_increment,
    title TEXT, 
    type TEXT,
    number_of_chapters int,
    PRIMARY KEY(courses_id)
);

-- Alteration are made here to add the constraints of Foreign Key so that the Tables can be created in any order without any errors due to missing tables 

ALTER TABLE Quiz
ADD FOREIGN KEY (user_id) REFERENCES User(user_id),
ADD FOREIGN KEY (result_id) REFERENCES Result(result_id);

ALTER TABLE Course 
ADD FOREIGN KEY (type) REFERENCES Result (type)
