Diff between ec2,RDs and aurora
Difference between RDS,EC2 and Aurora::

In rds we have upgrade option
in azure if we have to upgrade we have to create a new instance,we have to dump and restore the data
in azureit is not available only for major version but for minor version automatically it will upgrade we cant stop it 

in aws rds if we want we can upgrade we can opt otherwise we can stop 
--> the feature in aws rds is logs and events section that will be flexible to know about the recent events 
--> whereas in azure we dont have that
--> disadvantage of azure we cant move to one instance class to another in case of single server

RDS
---

1. RDS postgres memory architecture is exactly like open source postrgres 
2. Storage can be autoscaled based on the max size that we define 
3. Provisioned IOPS once provisioned we have to pay whether we use are not. Queries will fail once it hits max IOP's utilization
4. RDS postgres supports 64 TB max DB size 
5. MULTI AZ is a specific feature that can be enabled or disabled
6. Primary instance can be failed over to stand by automatically in the event of crash. But it cannot promote replica instance to new primary instance
** usually fail over takes 1-2 min but reflects on RDS console in 5 min
7. RDS instance replica can be promoted as new primary instance manually

Aurora
------

1. Aurora postgres architecture is changed slightly as it has developed multiple features on top of postgres open source code
2. Aurora uses 75% of RAM as shared buffers by default
3. Aurora doesn't uses checkpoints. It is replaced by read Qorum and write qorum(THis defines when background writer should write the data from 
   shared buffers to disk and when to clean shared buffers) 
4. Aurora supports storage autoscaling and DB can grow upto 128 TB max
5. Aurora IOPs are by default provisioned and it can be scalable automatically hence there won't be any query failure with IOPS limitations
6. There is no option called multi AZ. By default Aurora maintains 3 copies of storage in multiple availability zones
7. Aurora doesn't have a concept of standby with in the primary side 
8. When Aurora writer instance is failed it can promote reader instance as writer instance automatically 
9. Aurora supports maximum of 15 replicas. Aurora has replica autoscaling feature available
10. Aurora has dynamic resizing feature which will shrink/release DB storage once data is deleted
11. Aurora has cluster parameter group on top of instance parameter group. common parameters such as autovaccum, etc are part of cluster parameters

EC2
---
THIS ARE ON PREMISES DB ADMINSTRATION
EC2 instance

1.ec2 instance/vm ready
2.installed the postgres
3.set up the db
4.update conf parametres
5.we set up backups 
6.we set alerts and monitoring
7.upgraded the db manually
8.adminstered the db manually and availability is our responsbility 24/7



https://repost.aws/knowledge-center/rds-mysql-preupgrade-failure

https://repost.aws/knowledge-center/rds-mysql-preupgrade-failure