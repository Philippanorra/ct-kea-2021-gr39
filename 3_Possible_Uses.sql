-- In this last part we show a few ways that the data gathered can be used in reaserch 
USE Coderstrust;

-- The following lines will show each of the tables 
SELECT * 
FROM User;   

SELECT *
FROM Quiz;

SELECT *
FROM Question;

SELECT *
FROM Answer;

SELECT *
FROM Result;

SELECT * 
FROM Course;

-- Next, we have a few applied examples of quearies that show different types of data 
-- This can be used to find users that are students in case you need to offer them a discount at some point
SELECT *
FROM user 
WHERE email LIKE "%stud%";

-- Display the users by countries
SELECT  *
FROM User 
ORDER BY country ;

-- See average age of users
SELECT ROUND(AVG(age),0)
FROM User;

-- Show users some courses they could take based on their choices in the quiz
SELECT quiz.user_id,user.first_name,user.last_name, quiz.result_id,result.type,course.title
FROM user
JOIN Quiz ON quiz.user_id = user.user_id
JOIN Result ON result.result_id = quiz.result_id
JOIN Course ON course.type = result.type
-- The following line can be added if they only want to show the beginner courses
-- WHERE course.title LIKE "%Beginner%"
ORDER BY user.user_id;

-- More uses can be found for the data as well, these are just some short examples