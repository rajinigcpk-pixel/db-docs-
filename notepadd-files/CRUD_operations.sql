Some of The Most Important SQL Commands:-
-----------------------------------------------
SELECT - extracts data from a database
UPDATE - updates data in a database
DELETE - deletes data from a database
INSERT INTO - inserts new data into a database
CREATE DATABASE - creates a new database
ALTER DATABASE - modifies a database
CREATE TABLE - creates a new table
ALTER TABLE - modifies a table
DROP TABLE - deletes a table
CREATE INDEX - creates an index (search key)
DROP INDEX - deletes an index


CREATE DATABASE:-
-------------------
CREATE DATABASE testDB;


DROP DATABASE:-
-------------------
DROP DATABASE databasename;

BACKUP DATABASE:-
-------------------
BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak';

CREATE TABLE:-
---------------
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

DROP TABLE :-
-----------------
DROP TABLE table_name;

ALTER TABLE - ADD Column:-
----------------------
ALTER TABLE table_name
ADD column_name datatype;


ALTER TABLE - DROP COLUMN:-
-----------------------
ALTER TABLE table_name
DROP COLUMN column_name;

ALTER TABLE - RENAME COLUMN:-
-----------------------
ALTER TABLE table_name
RENAME COLUMN old_name to new_name;

ALTER TABLE - ALTER/MODIFY DATATYPE:-
-----------------
ALTER TABLE table_name
ALTER COLUMN column_name datatype;

CONSTRAINTS:-
--------------------
NOT NULL - Ensures that a column cannot have a NULL value
UNIQUE - Ensures that all values in a column are different
PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
FOREIGN KEY - Prevents actions that would destroy links between tables
CHECK - Ensures that the values in a column satisfies a specific condition
DEFAULT - Sets a default value for a column if no value is specified
CREATE INDEX - Used to create and retrieve data from the database very quickly

CREATE INDEX:-
--------------
CREATE INDEX index_name ON table_name (column1, column2, ...);
CREATE INDEX idx_lastname ON Persons (LastName);

Certainly! PostgreSQL is a powerful relational database management system, and it provides a wide range of commands for managing databases, tables, data, users, and more. Here are some common PostgreSQL commands:

Connecting to a Database:

css
Copy code
psql -h hostname -p port -d dbname -U username
Creating a Database:
-------------------------------------------
sql
Copy code
CREATE DATABASE dbname;

Creating a Table:
----------------------------------------------

sql
Copy code
CREATE TABLE tablename (
    column1 datatype,
    column2 datatype,
    ...
);

Inserting Data:
---------------------------------------------
sql
Copy code
INSERT INTO tablename (column1, column2, ...)
VALUES (value1, value2, ...);

Selecting Data:
---------------------------------------------
sql
Copy code
SELECT column1, column2
FROM tablename
WHERE condition;

Updating Data:
----------------------------------------------
sql
Copy code
UPDATE tablename
SET column = new_value
WHERE condition;

Deleting Data:
----------------------------------------------
sql
Copy code
DELETE FROM tablename
WHERE condition;

Creating an Index:
----------------------------------------------
sql
Copy code
CREATE INDEX indexname
ON tablename (column);

Creating a Sequence (Auto-increment):
----------------------------------------------
sql
Copy code
CREATE SEQUENCE sequencename
START WITH start_value
INCREMENT BY increment_value
MINVALUE min_value
MAXVALUE max_value;

Granting Permissions:
-------------------------------------------------
vbnet
Copy code
GRANT permission(s) ON object TO user;

Revoking Permissions:
---------------------------------------------------
sql
Copy code
REVOKE permission(s) ON object FROM user;

Backup and Restore (Using pg_dump and pg_restore):
----------------------------------------------------
css
Copy code
pg_dump -h hostname -p port -U username -d dbname -f backup_file.sql
pg_restore -h hostname -p port -U username -d dbname backup_file.sql


Managing Users:
--------------------------------------------------------
sql
Copy code
CREATE USER username WITH PASSWORD 'password';
ALTER USER username WITH PASSWORD 'new_password';
DROP USER username;

Managing Schemas:
-----------------------------------------------------------
graphql
Copy code
CREATE SCHEMA schemaname;
ALTER SCHEMA schemaname RENAME TO new_schemaname;
DROP SCHEMA schemaname;

Managing Constraints:
-------------------------------------------------------------

sql
Copy code
ALTER TABLE tablename
ADD CONSTRAINT constraint_name constraint_type (columns);

DATE:-
----------------

CREATE TABLE employees (
    employee_id serial PRIMARY KEY,
    first_name VARCHAR (255),
    last_name VARCHAR (355),
    birth_date DATE NOT NULL,
    hire_date DATE NOT NULL
);

INSERT INTO employees (first_name, last_name, birth_date, hire_date)
VALUES ('Raju', 'Kumar', '1996-12-02', '2020-01-01'),
       ('Nikhil', 'Aggarwal', '1997-08-24', '2019-01-01'),
       ('Anshul', 'Aggarwal', '1994-05-11', '2017-01-01');
	   
TIME:-
------------------

CREATE TABLE team_schedule (
    id serial PRIMARY KEY,
    team_name VARCHAR NOT NULL,
    clock_in_time TIME NOT NULL,
    clock_out_time TIME NOT NULL
);

INSERT INTO team_schedule(team_name, clock_in_time, clock_out_time)
VALUES('Marketing', '09:00:00', '18:00:00'),
      ('Sales', '10:00:00', '19:00:00'),
      ('Mentors', '09:00:00', '18:00:00'),
      ('Software', '11:00:00', '20:00:00'),
      ('Content', '10:00:00', '19:00:00');	   
	  
	  
JSON:-
-----------------	  
	  
	  CREATE TABLE orders (
    ID serial NOT NULL PRIMARY KEY,
    info json NOT NULL
);


INSERT INTO orders (info)
VALUES
    (
        '{ "customer": "Raju Kumar", "items": {"product": "coffee", "qty": 6}}'
    );

==========================================
CREATE TABLE credit_cntr.api_log (
	id bigserial NOT NULL,
	log_date timestamp(6) NULL,
	obj_name varchar(300) NULL,
	api_name text NULL,
	payload text NULL,
	ext_interface int2 NULL,
	interface_name varchar(300) NULL,
	error_code varchar(100) NULL,
	error_msg text NULL,
	retries int4 NULL,
	last_retry timestamp(6) NULL,
	user_id varchar(50) NULL,
	api_arg text NULL,
	CONSTRAINT pk_api_log PRIMARY KEY (id)
);


=====================================
show Permissions:-
----------------------
-- waybl.api_log definition

-- Drop table

-- DROP TABLE waybl.api_log;

CREATE TABLE waybl.api_log (
	id int8 NULL,
	log_date timestamp(6) NULL,
	obj_name varchar(300) NULL,
	api_name text NULL,
	payload text NULL,
	ext_interface int4 NULL,
	interface_name varchar(300) NULL,
	error_code varchar(100) NULL,
	error_msg text NULL,
	retries int4 NULL,
	last_retry timestamp(6) NULL,
	user_id varchar(50) NULL,
	api_arg text NULL,
	correlation_id varchar(50) NULL,
	propeli_status varchar(50) NULL,
	topic_name varchar(50) NULL,
	propeli_dt timestamp NULL,
	upd_dt timestamp(6) NULL
);
CREATE INDEX ie1_api_log ON waybl.api_log USING btree (log_date);
CREATE INDEX ie1_coreltn_id_api_log ON waybl.api_log USING btree (correlation_id);
CREATE INDEX ie1_id_api_log ON waybl.api_log USING btree (id);

-- Permissions
ALTER TABLE website.verifyotp OWNER TO postgres;

ALTER TABLE waybl.api_log OWNER TO pi_admin;
GRANT ALL ON TABLE waybl.api_log TO pi_admin;
GRANT SELECT, INSERT, UPDATE ON TABLE waybl.api_log TO pi_waybl_app_role;
GRANT SELECT ON TABLE waybl.api_log TO pi_waybl_usr_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE waybl.api_log TO pi_waybl_mgr_role WITH GRANT OPTION;
GRANT SELECT ON TABLE waybl.api_log TO db_trend_ro_usr;
GRANT SELECT, INSERT, UPDATE ON TABLE waybl.api_log TO v_tomar;
GRANT SELECT, INSERT, UPDATE ON TABLE waybl.api_log TO r_kotapati;
GRANT SELECT ON TABLE waybl.api_log TO r_trivedi;


CREATE USER pi_bil_report_usr WITH PASSWORD 'safex@123';
GRANT connect ON database bil_reports_db to pi_bil_report_usr;
GRANT SELECT ON ALL TABLES IN SCHEMA bil_misc to pi_bil_report_usr;
GRANT usage on schema bil_misc to pi_bil_report_usr;
---------------------------------
=============================================================================================================================
SELECT *
FROM your_table
WHERE timestamp_column >= NOW() - INTERVAL '2 days'
  AND timestamp_column < NOW();
  
  
  DELETE FROM your_table
WHERE timestamp_column < NOW() - INTERVAL '2 days';

select freight_gateway,* FROM waybl.booking_waybl where vas_flag is null and cast (crtd_dt as date) between '2023-10-17' and '2024-10-17';

---------------------------------
DDL:data defenition language
create,alter,drop,TRUNCATE  create table,
DMl:data manipulation language
insert,delete,update
tcl:transactional control language
commit,rollback,SAVEPOINT
drl:data retrival language
SELECT