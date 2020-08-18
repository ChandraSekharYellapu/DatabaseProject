Queries:
1.Display the tables created in the Database 
Database workbook and its tables

SQL Query:
show tables
 
-------------------------------------------------------------------------

2.Create Table with set of column names and type of data and size of it includes if any primary or foreign keys

SQL Query:
CREATE TABLE `users_notification` (
  `notification_id` int(7) NOT NULL AUTO_INCREMENT,
  `user_id` int(7) NOT NULL,
  `notification_txt` varchar(120) NOT NULL,
  `notification_time` varchar(30) NOT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `user_id` (`user_id`)
)


------------------------------------------------------------------------- 


3.List the users who are MALE
SQL Query:
SELECT Name,Email,Gender,Birthday_Date 
FROM `users` 
WHERE Gender='Male';

-------------------------------------------------------------------------
 


4. Delete Duplicate rows from the table user_security_question

 
SQL Query:

DELETE from user_secret_question
WHERE Answer2 not in 
(
SELECT MAX(user_id)
FROM  user_secret_question
GROUP  BY user_id
);
 
-------------------------------------------------------------------------
 


5. Insert Data into the tables 

SQL Query:

INSERT INTO `security_question` (`user_id`, `Question1`, `Answer1`, `Question2`, `Answer2`) VALUES
(8, 'what is the first name of your oldest nephew?', 'OneRaj', 'who is your all-time favorite movie character?', 'Amir Khan');



-------------------------------------------------------------------------

 

6. Display the structure of user info 

SQL Query:
describe user_info;

-------------------------------------------------------------------------
 

7. Rename table in workbook database

SQL Query:
RENAME TABLE `workbook`.`user_secret_questions` TO `workbook`
.`user_secret_question`;

------------------------------------------------------------------------- 



8. View the notifications for the particular user

SQL Query:

SELECT users_notification.notice_txt, users.Name, users_notification.notice_time
FROM users_notification
INNER JOIN users ON users_notification.user_id=users.user_id;

Query Result:

 
-------------------------------------------------------------------------



9. Display the posts made by the user on one’s Own Profile

SQL Query:
SELECT users.Name,user_post.post_txt,user_post.post_time,user_post.post_pic 
from users INNER JOIN user_post 
ON users.user_id=user_post.user_id AND users.user_id=83

------------------------------------------------------------------------- 

10.List the comments made on the posts 

SQL Query:

SELECT U.Name, U.Gender,P.post_txt,P.post_pic,C.comment 
FROM users AS U 
JOIN user_post P 
ON U.user_id = P.user_id JOIN user_post_comment C 
ON C.post_id=P.post_id;


    
 


