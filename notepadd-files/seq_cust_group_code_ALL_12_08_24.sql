Pre_prod:-
------------
CREATE SEQUENCE m_cust.seq_cust_group_code    INCREMENT BY 1 

MINVALUE 1 

MAXVALUE 9223372036854775807 

START 1 

CACHE 1 

NO CYCLE; 

ALTER SEQUENCE m_cust.seq_cust_group_code OWNER TO pi_admin;
GRANT ALL ON SEQUENCE m_cust.seq_cust_group_code TO pi_admin;
GRANT USAGE, SELECT ON SEQUENCE m_cust.seq_cust_group_code TO pi_cust_app_role;
GRANT SELECT ON SEQUENCE m_cust.seq_cust_group_code TO pi_cust_usr_role;
GRANT USAGE, SELECT ON SEQUENCE m_cust.seq_cust_group_code TO pi_cust_mgr_role WITH GRANT OPTION;
GRANT USAGE, SELECT ON SEQUENCE m_cust.seq_cust_group_code TO pi_cust_app_usr;
GRANT USAGE ON SEQUENCE m_cust.seq_cust_group_code TO pi_app_usr;
UAT:-
--------------
ALTER SEQUENCE m_cust.seq_cust_group_code OWNER TO pi_admin;
GRANT ALL ON SEQUENCE m_cust.seq_cust_group_code TO pi_admin;
GRANT USAGE, SELECT ON SEQUENCE m_cust.seq_cust_group_code TO pi_cust_app_role;
GRANT SELECT ON SEQUENCE m_cust.seq_cust_group_code TO pi_cust_usr_role;
GRANT USAGE, SELECT ON SEQUENCE m_cust.seq_cust_group_code TO pi_cust_mgr_role WITH GRANT OPTION;
GRANT USAGE ON SEQUENCE m_cust.seq_cust_group_code TO r_kotapati;
GRANT USAGE ON SEQUENCE m_cust.seq_cust_group_code TO v_tomar;

QA:-
-----

ALTER SEQUENCE m_cust.seq_cust_group_code OWNER TO pi_admin;
GRANT ALL ON SEQUENCE m_cust.seq_cust_group_code TO pi_admin;
GRANT USAGE, SELECT ON SEQUENCE m_cust.seq_cust_group_code TO pi_cust_app_role;
GRANT SELECT ON SEQUENCE m_cust.seq_cust_group_code TO pi_cust_usr_role;
GRANT USAGE, SELECT ON SEQUENCE m_cust.seq_cust_group_code TO pi_cust_mgr_role WITH GRANT OPTION;
GRANT USAGE ON SEQUENCE m_cust.seq_cust_group_code TO r_kotapati;
GRANT USAGE ON SEQUENCE m_cust.seq_cust_group_code TO v_tomar;

SIT:-
-------------
ALTER SEQUENCE m_cust.seq_cust_group_code OWNER TO pi_admin;
GRANT ALL ON SEQUENCE m_cust.seq_cust_group_code TO pi_admin;
GRANT USAGE, SELECT ON SEQUENCE m_cust.seq_cust_group_code TO pi_cust_app_role;
GRANT SELECT ON SEQUENCE m_cust.seq_cust_group_code TO pi_cust_usr_role;
GRANT USAGE, SELECT ON SEQUENCE m_cust.seq_cust_group_code TO pi_cust_mgr_role WITH GRANT OPTION;
GRANT USAGE, SELECT ON SEQUENCE m_cust.seq_cust_group_code TO pidbusr;

------------------------------------------

PROD:-
-----------
alter table  m_cust.group_cust_log  add column hist_crtd_by varchar(50) NOT NULL, add column hist_crtd_dt timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL;

ALTER TABLE m_cust.group_cust_log ALTER COLUMN hist_crtd_by [SET NOT NULL| DROP NULL];



CREATE SEQUENCE m_cust.seq_cust_group_code    INCREMENT BY 1 

MINVALUE 1 

MAXVALUE 9223372036854775807 

START 1 

CACHE 1 

NO CYCLE; 

ALTER SEQUENCE m_cust.seq_cust_group_code OWNER TO pi_admin;
GRANT ALL ON SEQUENCE m_cust.seq_cust_group_code TO pi_admin;
GRANT USAGE, SELECT ON SEQUENCE m_cust.seq_cust_group_code TO pi_cust_app_role;
GRANT SELECT ON SEQUENCE m_cust.seq_cust_group_code TO pi_cust_usr_role;
GRANT USAGE, SELECT ON SEQUENCE m_cust.seq_cust_group_code TO pi_cust_mgr_role WITH GRANT OPTION;