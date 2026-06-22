pg_dump -U postgres -h uatdb5-v12-4.csqgwfpsjqlz.ap-south-1.rds.amazonaws.com -p 5432 -d bil_allied_db  -f Dbbackup.sql
psql -U postgres -h uatdb5-v12-4.csqgwfpsjqlz.ap-south-1.rds.amazonaws.com -p 5432 -d bil_allied_db -f Dbbackup.sql

2d5SgeL8Y353y0A

pg_dump -U postgres -h testdb.cluster-csqgwfpsjqlz.ap-south-1.rds.amazonaws.com -p 5432 -d bil_allied_db  -f Dbbackup1.sql
psql -U postgres -h testdb.cluster-csqgwfpsjqlz.ap-south-1.rds.amazonaws.com -p 5432 -d bil_allied_db -f Dbbackup1.sql

QV7$L^SGXU;9;gl 
x4NluWmQgJ3Wp6z



------------------------------
pg_dump --help

pg_dump database name>database name.sql
pg_dump database name -f database name.sql

Demo
pg_dump -v dvdrental> /postgres/backup/dbbkp.sql
pg_dump -v dvdrental -f /postgres/backup/dbbkp.sql

cd /postgres/backup/dbbkp.sql
ls -ltr
vi dbbkp.sql
cat dbbkp.sql

Restore:-
-----------
createdb -T dvdrental_new
psql -v dvdrental_new < /postgres/backup/dbbkp.sql
----------------------------------------
==========================================================================

Locally i tested
--------------
--------------

Go to command prompt-->Goto c:/drive-->click on programfiles-->postgresql-->11-->bin   copy this path( C:\Program Files\PostgreSQL\11\bin) paste on the commandprompt on changing the DIRECTORY
cd C:\Program Files\PostgreSQL\11\bin  (It will change our DIRECTORY)

Backup:-
----------
pg_dump -U postgres -d department > C:\Users\80365\Desktop\localbkp.sql   (give the wr we need to store that dump)
Password:Safex@90 (user pswd)

After need to drop the particular db.create new db.

Restore:-
-------------
psql -U postgres -d department -1 -f C:\Users\80365\Desktop\localbkp.sql
Password for user postgres:Safex@90

refresh the db&  check the data.

select * FROM dept_sch.safeemp1 s ;





  
