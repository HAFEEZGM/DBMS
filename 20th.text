mysql> create table bank (s_no int(20),cust_name varchar(20),acc_no int(20),balance int(20),cus_branch varchar(20));
Query OK, 0 rows affected, 3 warnings (0.02 sec)

mysql> insert into bank values (1,'ramesh',12378,100000,'adyar');
Query OK, 1 row affected (0.01 sec)

mysql> insert into bank values (2,'samran',12367,,'mylapore');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ','mylapore')' at line 1
mysql> insert into bank values (2,'samran',12367,152500,'mylapore');
Query OK, 1 row affected (0.00 sec)

mysql> insert into bank values (3,'hari',12345,250000,'anna salai');
Query OK, 1 row affected (0.00 sec)

mysql> select * from bank;
+------+-----------+--------+---------+------------+
| s_no | cust_name | acc_no | balance | cus_branch |
+------+-----------+--------+---------+------------+
|    1 | ramesh    |  12378 |  100000 | adyar      |
|    2 | samran    |  12367 |  152500 | mylapore   |
|    3 | hari      |  12345 |  250000 | anna salai |
+------+-----------+--------+---------+------------+
3 rows in set (0.00 sec)

mysql> select cust_name,acc_no,cus_branch
    -> from bank
    -> where balance > 200000;
+-----------+--------+------------+
| cust_name | acc_no | cus_branch |
+-----------+--------+------------+
| hari      |  12345 | anna salai |
+-----------+--------+------------+
1 row in set (0.00 sec)

mysql> select cust_name,acc_no,cus_branch
    -> from bank
    -> where balance between 100000 and 200000;
+-----------+--------+------------+
| cust_name | acc_no | cus_branch |
+-----------+--------+------------+
| ramesh    |  12378 | adyar      |
| samran    |  12367 | mylapore   |
+-----------+--------+------------+
2 rows in set (0.00 sec)

mysql> update bank
    -> set
    -> cus_branch=pondy
    -> where
    -> s_no=2;
ERROR 1054 (42S22): Unknown column 'pondy' in 'field list'
mysql> update bank
    -> set
    -> cus_branch='pondy'
    -> where
    -> s_no=2;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from bank;
+------+-----------+--------+---------+------------+
| s_no | cust_name | acc_no | balance | cus_branch |
+------+-----------+--------+---------+------------+
|    1 | ramesh    |  12378 |  100000 | adyar      |
|    2 | samran    |  12367 |  152500 | pondy      |
|    3 | hari      |  12345 |  250000 | anna salai |
+------+-----------+--------+---------+------------+
3 rows in set (0.00 sec)

mysql> select max(balance)
    -> from bank;
+--------------+
| max(balance) |
+--------------+
|       250000 |
+--------------+
1 row in set (0.00 sec)

mysql> drop table bank;
Query OK, 0 rows affected (0.01 sec)
