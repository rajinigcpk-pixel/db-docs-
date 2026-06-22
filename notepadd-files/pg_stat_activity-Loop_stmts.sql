S29U=:v@@pg;cX&\

Please cancel the bill -240308000313


select status, irn_flag ,dev_id ,cr_dt ,actual_outstanding_amt , outstanding_amt ,
* from bil_allied.allied_bills ab  
where billnum  = '240308000313'

select alias,user_id, * from waybl.pkg_dtls where booking_waybl_id in (8756307,9682332);

 
update waybl.pkg_dtls
set alias = 'UPTO 50KG',
upd_dt = now(),
where booking_waybl_id in (8756307,9682332);

select bw.lkp_biz_type_id ,bw.pickup_dt ,bw.lkp_branch_mop_id ,bw.id ,upd_by ,* from waybl.waybl_fin wf
inner join waybl.booking_waybl bw
on bw.id = wf.booking_waybl_id
where 1=1
and bw.waybl_num in ('500748019384')

update waybl.booking_waybl
set
pickup_dt = '2023-08-10',
upd_dt = now(),
upd_by = 'PI_ADMIN'
where
waybl_num in ('500748019384')


update bil_allied.allied_bills
set irn_flag = 'C',
status= 'CANCELLED',
upd_by = 'RK',
upd_dt = now()
where billnum  = '240308000313'


INSERT INTO tableName (dateTimeColumn) VALUES ('2023-08-18 12:45:00');



Syntax:
IF condition THEN
   statements;
END IF;


DO $$
DECLARE
  a integer := 10;
  b integer := 20;
BEGIN 
  IF a > b THEN
    RAISE NOTICE 'a is greater than b';
  END IF;

  IF a < b THEN
    RAISE NOTICE 'a is less than b';
  END IF;

  IF a = b THEN
    RAISE NOTICE 'a is equal to b';
  END IF;
END $$;


DO $$
DECLARE
   a integer := 10;
   b integer := 10;
BEGIN 
  IF a > b THEN 
     RAISE NOTICE 'a is greater than b';
  ELSIF a < b THEN
     RAISE NOTICE 'a is less than b';
  ELSE
     RAISE NOTICE 'a is equal to b';
  END IF;
END $$;

Syntax:
<<label>>
loop
  statements/body;
end loop;

<<label>>
loop
  statements;
  if condition then
     exit;
  end if;
end loop;

<<outer>>
loop  
  statements;
  <<inner>>
  loop
    inside statements;
    exit <<inner>>
  end loop;
end loop;
Example 1:

The following example shows how to use the loop statement to print all numbers from 1 to 5.

do $$
declare
  n integer:= 6;
  cnt integer := 1 ;  
begin
loop  
 exit when cnt = n ;
 raise notice '%', cnt;  
 cnt := cnt + 1 ;  
end loop;  
end; $$;

do $$
declare
 n integer:= 0;
 cnt integer := 10 ;  
begin
loop  
exit when cnt = n ;
raise notice '%', cnt;  
cnt := cnt - 1 ;  
end loop;  
end; $$;


[ <<label>> ]
while condition loop
  statements;
end loop;

do $$
declare
add integer := 0;
begin
while add <10 loop
raise notice 'Out addition count %', add;
add := add+1;
end loop;
end$$;

do $$
declare
add integer := 10;
begin
while add > 0 loop
raise notice 'Out addition count %',add;
add := add-1;
end loop;
end$$;


if cnt < 5 then
  exit;
end if;

do $$
declare
 n integer:= 8;
 cnt integer := 1 ;  
begin
loop  
exit when cnt = n ;
raise notice '%', cnt;  
cnt := cnt + 1 ;  
end loop;  
end; $$;

<<block_label>>
BEGIN
   Statements
   EXIT [block_label] [WHEN condition];
   Statements
END block_label;

do
$$
begin
 raise notice '%', 'Before block';
 <<normalblock>>  
  begin
 raise notice '%', 'Before exit ; inside block';
   exit normalblock;
    raise notice '%', 'After exit ; inside block';
  end;
  raise notice '%', 'End of block';
end;
$$;

CONTINUE [ label ] [ WHEN boolean-expression ];

do
$$
declare
  cnt int = 0;
begin
 loop
 -- increment of cnt
    cnt = cnt + 1;
 -- exit the loop if cnt > 10
 exit when cnt > 10;
 -- skip the iteration if cnt is an odd number
 continue when mod(cnt,2) = 1;
 -- print out the cnt
 raise notice '%', cnt;
 end loop;
end;
$$;

do
$$
declare
  cnt int = 0;
begin 
 loop
 -- increment of cnt
    cnt = cnt + 1;
 -- exit the loop if cnt > 10
 exit when cnt > 10;
 -- skip the iteration if cnt is an odd number
 continue when cnt = 6;
 -- print out the cnt
 raise notice '%', cnt;
 end loop;
end;
$$;



SELECT
  pid,
  now() - pg_stat_activity.query_start AS duration,
  query,
  state
FROM pg_stat_activity
WHERE (now() - pg_stat_activity.query_start) > interval '5 minutes';

SELECT pg_cancel_backend(__pid__);
SELECT pg_terminate_backend(__pid__);

SELECT datname,usename,client_addr,client_port FROM pg_stat_activity ;
SELECT datname,usename,query FROM pg_stat_activity ;
SELECT datname,usename,current_query FROM pg_stat_activity ;
SELECT datname,usename,query FROM pg_stat_activity WHERE state != 'idle' ;
SELECT datname,usename,current_query FROM pg_stat_activity WHERE current_query != '<IDLE>' ;
select current_timestamp - query_start as runtime, datname, usename, query from pg_stat_activity where state != 'idle' order by 1 desc;
select current_timestamp - query_start as runtime, datname, usename, current_query from pg_stat_activity where current_query != '<IDLE>' order by 1 desc;

Diagnose and troubleshoot abnormal SQL queries:-
-------------------------------------------------------
SELECT datname,usename,query FROM pg_stat_activity WHERE waiting;
SELECT datname,usename,current_query FROM pg_stat_activity WHERE waiting;



ALTER USER <username> WITH PASSWORD '<new_password>';  -- change password
ALTER USER <old_username> RENAME TO <new_username>;    -- rename user