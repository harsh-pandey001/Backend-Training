PostgresSQL  

 

PostgresSQL is a powerful, Open  source object-relational database system.  

PostgreSQL (Post-gress-Q-L) is an open source realtional database management system 

It supports text, images, sounds and video,  and includes programming interfaces for C/C++, Java, Perl, Python, Ruby, Tcl and Open Database Connectivity (ODBC) 

 

To Open postgreSQL following commands should be run  

--> Sudo –i –u postgres  

To switch into postgresql  

--> Psql  

 

 To see databases list  

--> \l 

To Create Database  

-->  Create Database harsh; 

 

postgres=# \c harsh 

--> harsh=# \d 

          List of relations 

Schema |  Name   | Type  |  Owner    

--------+---------+-------+---------- 

public | company | table | postgres 

(1 row) 

  

harsh=# NSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY,JOIN_DATE) VALUES (1, 'Paul', 32, 'California', 20000.00,'2001-07-13'); 

ERROR:  syntax error at or near "NSERT" 

LINE 1: NSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY,JOIN_DATE) VA... 

        ^ 

harsh=# INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY,JOIN_DATE) VALUES (1, 'Paul', 32, 'California', 20000.00,'2001-07-13'); 

ERROR:  column "join_date" of relation "company" does not exist 

LINE 1: INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY,JOIN_DATE) V... 

                                                        ^ 

harsh=# INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY) VALUES (1, 'Paul', 32, 'California', 20000.00); 

INSERT 0 1 

harsh=# INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,JOIN_DATE) VALUES (2, 'Allen', 25, 'Texas'); 

ERROR:  column "join_date" of relation "company" does not exist 

LINE 1: INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,JOIN_DATE) VALUES (... 

                                                 ^ 

harsh=# INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS) VALUES (2, 'Allen', 25, 'Texas'); 

INSERT 0 1 

harsh=# INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY) VALUES (3, 'Teddy', 23, 'Norway', 20000.00); 

INSERT 0 1 

harsh=# INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY) VALUES (4, 'Mark', 25, 'Rich-Mond ', 65000.00), (5, 'David', 27, 'Texas', 85000.00,); 

ERROR:  syntax error at or near ")" 

LINE 1: ...ich-Mond ', 65000.00), (5, 'David', 27, 'Texas', 85000.00,); 

                                                                     ^ 

harsh=# INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY) VALUES (4, 'Mark', 25, 'Rich-Mond ', 65000.00), (5, 'David', 27, 'Texas', 85000.00); 

INSERT 0 2 

harsh=# select * from company; 

harsh=# SELECT ID, NAME, SALARY FROM COMPANY; 

id | name  | salary  

----+-------+-------- 

  1 | Paul  |  20000 

  2 | Allen |        

  3 | Teddy |  20000 

  4 | Mark  |  65000 

  5 | David |  85000 

(5 rows) 

  

harsh=# select * from company where salary = 20000; 

harsh=# select (99+99) AS Addition; 

addition  

---------- 

      198 

(1 row) 

  

harsh=# select Count(*) as "RECORDS" from company; 

RECORDS  

--------- 

       5 

(1 row) 

  

harsh=# SELECT CURRENT_TIMESTAMP; 

        current_timestamp          

---------------------------------- 

2024-02-01 14:30:12.096604+05:30 

(1 row) 

  

harsh=# SELECT ID, NAME,age, SALARY FROM COMPANY; 

id | name  | age | salary  

----+-------+-----+-------- 

  1 | Paul  |  32 |  20000 

  2 | Allen |  25 |        

  3 | Teddy |  23 |  20000 

  4 | Mark  |  25 |  65000 

  5 | David |  27 |  85000 

(5 rows) 

  

harsh=# select * from company where age >= 23; 

harsh=# SELECT ID, NAME,age, SALARY FROM COMPANY where age >= 23; 

id | name  | age | salary  

----+-------+-----+-------- 

  1 | Paul  |  32 |  20000 

  2 | Allen |  25 |        

  3 | Teddy |  23 |  20000 

  4 | Mark  |  25 |  65000 

  5 | David |  27 |  85000 

(5 rows) 

  

harsh=# SELECT ID, NAME,age, SALARY FROM COMPANY where age >= 27; 

id | name  | age | salary  

----+-------+-----+-------- 

  1 | Paul  |  32 |  20000 

  5 | David |  27 |  85000 

(2 rows) 

  

harsh=# SELECT ID, NAME,age, SALARY FROM COMPANY where age is not null; 

id | name  | age | salary  

----+-------+-----+-------- 

  1 | Paul  |  32 |  20000 

  2 | Allen |  25 |        

  3 | Teddy |  23 |  20000 

  4 | Mark  |  25 |  65000 

  5 | David |  27 |  85000 

(5 rows) 

  

harsh=# SELECT ID, NAME,age, SALARY FROM COMPANY where salary is not null; 

id | name  | age | salary  

----+-------+-----+-------- 

  1 | Paul  |  32 |  20000 

  3 | Teddy |  23 |  20000 

  4 | Mark  |  25 |  65000 

  5 | David |  27 |  85000 

(4 rows) 

  

harsh=# SELECT ID, NAME,age, SALARY FROM COMPANY where name like 'pa%'; 

id | name | age | salary  

----+------+-----+-------- 

(0 rows) 

  

harsh=# select * from company where name like "pa%;" 

harsh-# SELECT ID, NAME,age, SALARY FROM COMPANY where name like 'pa%'; 

ERROR:  syntax error at or near "SELECT" 

LINE 2: SELECT ID, NAME,age, SALARY FROM COMPANY where name like 'pa... 

        ^ 

harsh=#                                                  

SELECT ID, NAME,age, SALARY FROM COMPANY where name like 'pa%'; 

id | name | age | salary  

----+------+-----+-------- 

(0 rows) 

  

harsh=# select * from company where age in (23, 25~;) 

harsh-# select * from company where age in (23, 25); 

ERROR:  syntax error at or near ";" 

LINE 1: select * from company where age in (23, 25~;) 

                                                   ^ 

harsh=# select * from company where age in (23, 25) 

harsh-# select * from company where name like 'p' 

harsh-# select * from company where name like 'p%'; 

ERROR:  syntax error at or near "select" 

LINE 2: select * from company where name like 'p' 

        ^ 

harsh=# SELECT * FROM company WHERE name LIKE 'p%' 

harsh-# select * FROM COMPANY WHERE AGE NOT IN (25, 27); 

ERROR:  syntax error at or near "select" 

LINE 2: select * FROM COMPANY WHERE AGE NOT IN (25, 27); 

        ^ 

harsh=# SELECT ID, NAME,age, SALARY FROM COMPANY where name like 'pa%'; 

id | name | age | salary  

----+------+-----+-------- 

(0 rows) 

  

harsh=# DESC COMPANY; 

ERROR:  syntax error at or near "DESC" 

LINE 1: DESC COMPANY; 

        ^ 

harsh=# describe company; 

ERROR:  syntax error at or near "describe" 

LINE 1: describe company; 

 