mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sajin              |
| sajinak            |
| world              |
+--------------------+
6 rows in set (0.02 sec)

mysql> use sajinak;
Database changed
mysql> show tables;
+-------------------+
| Tables_in_sajinak |
+-------------------+
| student           |
+-------------------+
1 row in set (0.01 sec)

mysql> desc student;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| name     | varchar(30) | NO   |     | NULL    |       |
| regno    | varchar(20) | YES  | UNI | NULL    |       |
| email    | varchar(30) | YES  | UNI | NULL    |       |
| password | varchar(30) | NO   |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> select * from student;
+-----------+-------+-----------------------+----------+
| name      | regno | email                 | password |
+-----------+-------+-----------------------+----------+
| sajin a.k | 111   | sajinak2003@gmail.com | 12345    |
| nijas a.k | 112   | nijas@23gmail.com     | 12212    |
| aaron     | 122   | aaron2@gmail.com      | 13332    |
| lijin     | 123   | lijin*@gmail.com      | 14444    |
+-----------+-------+-----------------------+----------+
4 rows in set (0.01 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sajin              |
| sajinak            |
| world              |
+--------------------+
6 rows in set (0.00 sec)

mysql> use sajinak;
Database changed
mysql> select*from sajinak;
ERROR 1146 (42S02): Table 'sajinak.sajinak' doesn't exist
mysql> show tables;
+-------------------+
| Tables_in_sajinak |
+-------------------+
| student           |
+-------------------+
1 row in set (0.00 sec)

mysql> select* from student;
+-----------+-------+-----------------------+----------+
| name      | regno | email                 | password |
+-----------+-------+-----------------------+----------+
| sajin a.k | 111   | sajinak2003@gmail.com | 12345    |
| nijas a.k | 112   | nijas@23gmail.com     | 12212    |
| aaron     | 122   | aaron2@gmail.com      | 13332    |
| lijin     | 123   | lijin*@gmail.com      | 14444    |
+-----------+-------+-----------------------+----------+
4 rows in set (0.00 sec)

mysql> show tables;
+-------------------+
| Tables_in_sajinak |
+-------------------+
| student           |
+-------------------+
1 row in set (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sajin              |
| sajinak            |
| world              |
+--------------------+
6 rows in set (0.00 sec)

mysql> use sajin;
Database changed
mysql> show tables;
+-----------------+
| Tables_in_sajin |
+-----------------+
| ak              |
| employees       |
+-----------------+
2 rows in set (0.00 sec)

mysql> use employees;
ERROR 1049 (42000): Unknown database 'employees'
mysql> select*from employees;
+-------+---------+------------------------+---------+
| empid | empname | jobdescription         | salary  |
+-------+---------+------------------------+---------+
| 1     | sajin   | data scientist         | 1000000 |
| 2     | aaron   | data scientist         | 1000000 |
| 3     | lijin   | data analyst           | 2000000 |
| 4     | sam     | data engineer          | 3000000 |
| 5     | ram     | data pipeline engineer |  200000 |
| 6     | aurun   | AI ML ENGINEER         |  100000 |
| 7     | sea     | front-end              |   10000 |
| 8     | siva    | back-end               |   20000 |
| 9     | tharun  | full-stack             |   10000 |
| 10    | mani    | data scientist         | 7000000 |
| 11    | gururan | data scientist         | 9000000 |
| 12    | manju   | devops                 | 1000000 |
| 13    | silent  | ml engineer            |    1070 |
+-------+---------+------------------------+---------+
13 rows in set (0.00 sec)

mysql> select distint from employees;
ERROR 1054 (42S22): Unknown column 'distint' in 'field list'
mysql> select distint jobdescription from employees;
ERROR 1054 (42S22): Unknown column 'distint' in 'field list'
mysql> select distinct jobdescription from employees;
+------------------------+
| jobdescription         |
+------------------------+
| data scientist         |
| data analyst           |
| data engineer          |
| data pipeline engineer |
| AI ML ENGINEER         |
| front-end              |
| back-end               |
| full-stack             |
| devops                 |
| ml engineer            |
+------------------------+s
10 rows in set (0.00 sec)
