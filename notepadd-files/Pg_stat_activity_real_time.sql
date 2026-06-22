prod-reporting-aurora.c6pu6p9yurys.ap-south-1.rds.amazonaws.com

prod-reporting-aurora-cluster.cluster-c6pu6p9yurys.ap-south-1.rds.amazonaws.com	
 
prod-reporting-aurora-cluster.cluster-ro-c6pu6p9yurys.ap-south-1.rds.amazonaws.com

---------------------------------
select pid,
	usename,
	query,
	state,
	datname,
	query_start,
	*
from
	pg_catalog.pg_stat_activity
where
	state='idle' and query_start >= now() 
	- interval '10 mins'
	
SELECT pg_cancel_backend(pid) FROM pg_stat_activity WHERE state = 'idle' and pid <> pg_backend_pid(); 

select pg_terminate_backend(pid)

select pid,
	usename,
	query,
	state,
	datname,
	query_start,
	*
from
	pg_catalog.pg_stat_activity
where cardinality(pg_blocking_pids(pid))>0;

select pid,
	usename,
	query,
	state,
	datname,
	query_start,
	*
from
	pg_catalog.pg_stat_activity
where  state='idle' and (now() -pg_stat_activity.query_start)> interval '15 mins'

[2:34 PM] AMAN GUPTA
select pid, 	usename, 	query, 	state, 	datname, 	query_start, 	* from 	pg_catalog.pg_stat_activity where state='idle' and (now() -pg_stat_activity.query_start)> interval '15 mins' and username not in ('postgres');
-----------------------------
SELECT pg_cancel_backend(<PID>);----Graceful
SELECT pg_terminate_backend(<PID>);----Forceful
---------------------------
--------------
SELECT
 pg_terminate_backend(pid)
FROM
 pg_stat_activity
WHERE
 datname = 
'<TARGET_DB_NAME>'
AND
 leader_pid 
IS NULL
;
------------------------------------
SELECT 'SELECT pg_TERMINATE_backend('''||pid||''');' FROM pg_stat_activity WHERE state = 'idle' and (now() -pg_stat_activity.query_start)> interval '15 mins'
	and  usename not in ('postgres');
--------------------------------------
select
	 distinct usename,
	pid ,
	query,
	state,
	datname,
	query_start,
	*
from
	pg_catalog.pg_stat_activity
where
	state = 'idle'
	and (now() -pg_stat_activity.query_start)> interval '15 mins'
	and  usename not in ('postgres')
and PID = 27052;
--
SELECT 'SELECT pg_TERMINATE_backend('''||pid||''');' FROM pg_stat_activity WHERE state = 'idle' and (now() -pg_stat_activity.query_start)> interval '15 mins'
	and  usename not in ('postgres');
---
SELECT pg_TERMINATE_backend('27052');
commit;
-----------------------------------------------------------------
select
	 distinct usename,
	pid ,
	query,
	state,
	datname,
	query_start,
	*
from
	pg_catalog.pg_stat_activity
where
	state = 'idle'
	and (now() -pg_stat_activity.query_start)> interval '10 mins'
	and usename not in ('postgres');
