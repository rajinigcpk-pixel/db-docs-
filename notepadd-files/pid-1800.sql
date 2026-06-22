


Consignee feature DB object creation request

Attach

Create subtask

Link issue

Sprint
None
DB Script Path/Name

Script is attached with JIRA task itself.
Config Changes

None
Attachments (4)



m_lkp_oth_2023-04-25.sql
12 Jul 2023, 11:41 AM

m_addr_2023-04-19.sql
12 Jul 2023, 11:41 AM

credit_cntr_2023-04-21.sql
12 Jul 2023, 11:41 AM

prc_cntr_2023-04-21.sql
12 Jul 2023, 11:41 AM
Activity
Show:

All

Comments

History

Work log

Newest first

Add a comment…
Pro tip: press 
M
 to comment

New Request
Flag removed

Actions
Details
Assignee



Aman Gupta
Assign to me
Reporter


Aman Gupta
Title/Project Name


Consignee feature DB object creation request
Fix Type


None
Request(Prod.)


DB
Request Database Changes


Database Changes
Service Name


None
Repository


None
Branch


None
Hot Fix Details (If Branch Hot Fix)


None
Planned Implementation Date


Jul 12, 2023, 3:00 AM
UAT Tag ID


not required
Components


Contracts
MDM
More fields
Original estimate, Time tracking
Automation

Rule executions
Created July 12, 2023 at 11:41 AM
Updated September 29, 2023 at 6:05 PM
Configure

m_lkp_oth_2023-04-25.sql
sql · 4 KB

CREATE SEQUENCE m_lkp_oth.seq_cnee_feature_id
INCREMENT BY 1
MINVALUE 1
NO MAXVALUE
START WITH 1
NO CYCLE;

ALTER SEQUENCE m_lkp_oth.seq_cnee_feature_id OWNER TO pi_admin;
GRANT ALL ON SEQUENCE m_lkp_oth.seq_cnee_feature_id TO pi_admin;
GRANT SELECT, USAGE ON SEQUENCE m_lkp_oth.seq_cnee_feature_id TO pi_lkp_app_role;
GRANT SELECT ON SEQUENCE m_lkp_oth.seq_cnee_feature_id TO pi_lkp_usr_role;
GRANT SELECT, USAGE ON SEQUENCE m_lkp_oth.seq_cnee_feature_id TO pi_lkp_mgr_role WITH GRANT OPTION;
--GRANT SELECT, USAGE ON SEQUENCE m_lkp_oth.seq_cnee_feature_id TO pidbusr;
CREATE TABLE m_lkp_oth.cnee_feature (
	id int4 NOT NULL,
	cnee_feature_name varchar(50) NOT NULL,
	descr varchar(100) NULL,
	status int2 NOT NULL,
	attr1 varchar(100) NULL,
	attr2 varchar(100) NULL,
	attr3 int4 NULL,
	attr4 int4 NULL,
	effective_dt timestamp NOT NULL,
	exp_dt timestamp NULL,
	crtd_dt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	crtd_by varchar(50) NOT NULL,
	upd_dt timestamp NOT NULL,
	upd_by varchar(50) NOT NULL,
	propel_ref_id int8 NULL,
	CONSTRAINT pk_cnee_feature PRIMARY KEY (id)
);
--CREATE UNIQUE INDEX ak1_cnee_feature ON m_lkp_oth.cnee_feature USING btree (cnee_feature_name);
ALTER TABLE m_lkp_oth.cnee_feature OWNER TO pi_admin;
GRANT ALL ON TABLE m_lkp_oth.cnee_feature TO pi_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE m_lkp_oth.cnee_feature TO pi_lkp_app_role;
GRANT SELECT ON TABLE m_lkp_oth.cnee_feature TO pi_lkp_usr_role;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_lkp_oth.cnee_feature TO pi_lkp_mgr_role WITH GRANT OPTION;
GRANT SELECT ON TABLE m_lkp_oth.fuel TO db_trend_ro_usr;
--GRANT INSERT, SELECT, UPDATE ON TABLE m_lkp_oth.cnee_feature TO pidbusr;
--GRANT SELECT ON TABLE m_lkp_oth.cnee_feature TO pi_perge_usr;
---TABLE 2 ------
CREATE SEQUENCE m_lkp_oth.seq_cnee_feature_hist_hist_id
INCREMENT BY 1
MINVALUE 1
NO MAXVALUE
START WITH 1
NO CYCLE;
ALTER SEQUENCE m_lkp_oth.seq_cnee_feature_hist_hist_id OWNER TO pi_admin;
GRANT ALL ON SEQUENCE m_lkp_oth.seq_cnee_feature_hist_hist_id TO pi_admin;
GRANT SELECT, USAGE ON SEQUENCE m_lkp_oth.seq_cnee_feature_hist_hist_id TO pi_lkp_app_role;
GRANT SELECT ON SEQUENCE m_lkp_oth.seq_cnee_feature_hist_hist_id TO pi_lkp_usr_role;
GRANT SELECT, USAGE ON SEQUENCE m_lkp_oth.seq_cnee_feature_hist_hist_id TO pi_lkp_mgr_role WITH GRANT OPTION;
--GRANT SELECT, USAGE ON SEQUENCE m_lkp_oth.seq_cnee_feature_hist_hist_id TO pidbusr;
CREATE TABLE m_lkp_oth.cnee_feature_hist (
	hist_id bigserial NOT NULL,
	"id" int4 NOT NULL,
	cnee_feature_name varchar(50) NOT NULL,
	"descr" varchar(100) NULL,
	"status" int2 NOT NULL,
	"attr1" varchar(100) NULL,
	"attr2" varchar(100) NULL,
	"attr3" int4 NULL,
	"attr4" int4 NULL,
	"effective_dt" timestamp NOT NULL,
	"exp_dt" timestamp NULL,
	"crtd_dt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"crtd_by" varchar(50) NOT NULL,
	"upd_dt" timestamp NOT NULL,
	"upd_by" varchar(50) NOT NULL,
	"propel_ref_id" int8 NULL,
	"hist_crtd_by" varchar(50) NOT NULL,
	"hist_crtd_dt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT pk_cnee_feature_hist PRIMARY KEY (hist_id)
);
ALTER TABLE m_lkp_oth.cnee_feature_hist OWNER TO pi_admin;
GRANT ALL ON TABLE m_lkp_oth.cnee_feature_hist TO pi_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE m_lkp_oth.cnee_feature_hist TO pi_lkp_app_role;
GRANT SELECT ON TABLE m_lkp_oth.cnee_feature_hist TO pi_lkp_usr_role;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_lkp_oth.cnee_feature_hist TO pi_lkp_mgr_role WITH GRANT OPTION;
--GRANT INSERT, SELECT, UPDATE ON TABLE m_lkp_oth.cnee_feature_hist TO pidbusr;
--GRANT SELECT ON TABLE m_lkp_oth.cnee_feature_hist TO pi_perge_usr;
===============================================================================================================================



-------------------------------------------------------------------------------
-- Author..........: Aman Gupta
-- Created.........: 19 April 2023 11:44:32
-- Model File Name.: D:\new-code-commit\propeli-db\ERWIN_model\SIT\Propel-i_mdm_addr.erwin
-- Purpose.........: 
-- Copyright © 2020, SafeExpress India Pvt. Ltd., All Rights Reserved
-------------------------------------------------------------------------------
-- Modification History
--
--
--
---- =============================================================================================================================================================
------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE SEQUENCE m_addr.seq_sds_cnee_cnor_id
INCREMENT BY 1
MINVALUE 1
NO MAXVALUE
START WITH 1
NO CYCLE;
CREATE TABLE m_addr.sds_cnee_cnor
( 
	id                   integer  NOT NULL ,
	name                 varchar(100)  NULL ,
	gstin_num            varchar(50)  NULL ,
	lkp_consigntype_id   integer  NULL ,
	descr                character varying(100)  NULL ,
	status               smallint  NOT NULL ,
	attr1                character varying(100)  NULL ,
	attr2                character varying(100)  NULL ,
	attr3                integer  NULL ,
	attr4                integer  NULL ,
	effective_dt         timestamp(6) without time zone  NOT NULL ,
	exp_dt               timestamp(6) without time zone  NULL ,
	crtd_dt              date  NULL ,
	crtd_by              varchar(50)  NULL ,
	upd_dt               date  NULL ,
	upd_by               varchar(50)  NULL ,
	propel_ref_id        integer  NULL 
);
ALTER TABLE m_addr.sds_cnee_cnor
ADD CONSTRAINT pk_sds_cnee_cnor PRIMARY KEY (id);
ALTER TABLE m_addr.sds_cnee_cnor OWNER TO pi_admin;
GRANT ALL ON TABLE m_addr.sds_cnee_cnor TO pi_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE m_addr.sds_cnee_cnor TO pi_addr_app_role;
GRANT SELECT ON TABLE m_addr.sds_cnee_cnor TO pi_addr_usr_role;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_addr.sds_cnee_cnor TO pi_addr_mgr_role WITH GRANT OPTION;
--GRANT INSERT, SELECT, UPDATE ON TABLE m_addr.sds_cnee_cnor TO pidbusr;
--GRANT SELECT ON TABLE m_addr.sds_cnee_cnor TO pi_perge_usr;
GRANT SELECT ON TABLE m_addr.addr_book TO db_trend_ro_usr;
ALTER SEQUENCE m_addr.seq_sds_cnee_cnor_id OWNER TO pi_admin;
GRANT ALL ON SEQUENCE m_addr.seq_sds_cnee_cnor_id TO pi_admin;
GRANT SELECT, USAGE ON SEQUENCE m_addr.seq_sds_cnee_cnor_id TO pi_addr_app_role;
GRANT SELECT ON SEQUENCE m_addr.seq_sds_cnee_cnor_id TO pi_addr_usr_role;
GRANT SELECT, USAGE ON SEQUENCE m_addr.seq_sds_cnee_cnor_id TO pi_addr_mgr_role WITH GRANT OPTION;
--GRANT SELECT, USAGE ON SEQUENCE m_addr.seq_sds_cnee_cnor_id TO pidbusr;
-------------------------------------------------------------------------------
-- Author..........: Aman Gupta
-- Created.........: 20 April 2023 14:32:47
-- Model File Name.: C:\Users\52998\Desktop\ERWIN\Propel-i_mdm_addr.erwin
-- Purpose.........: 
-- Copyright © 2020, SafeExpress India Pvt. Ltd., All Rights Reserved
-------------------------------------------------------------------------------
-- Modification History
--
--
--
---- =============================================================================================================================================================
------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE SEQUENCE m_addr.sds_cnee_cnor_hist_id_seq
INCREMENT BY 1
MINVALUE 1
NO MAXVALUE
START WITH 1
NO CYCLE;
CREATE TABLE m_addr.sds_cnee_cnor_hist
( 
	hist_id              bigserial  NOT NULL ,
	id                   int4  NOT NULL ,
	name                 varchar(100)  NOT NULL ,
	gstin_num            varchar(50)  NULL ,
	lkp_consigntype_id   int4  NOT NULL ,
	descr                varchar(100)  NULL ,
	status               int2  NOT NULL ,
	attr1                varchar(100)  NULL ,
	attr2                varchar(100)  NULL ,
	attr3                int4  NULL ,
	attr4                int4  NULL ,
	effective_dt         date  NOT NULL ,
	exp_dt               date  NULL ,
	crtd_dt              timestamp  NOT NULL ,
	crtd_by              varchar(50)  NOT NULL ,
	upd_dt               timestamp  NOT NULL ,
	upd_by               varchar(50)  NOT NULL ,
	propel_ref_id        int8  NULL ,
	hist_crtd_by         varchar(50)  NULL ,
	hist_crtd_dt         timestamp  NOT NULL ,
	CONSTRAINT pk_sds_cnee_cnor_hist PRIMARY KEY (hist_id)
);
ALTER SEQUENCE m_addr.sds_cnee_cnor_hist_id_seq OWNER TO pi_admin;
GRANT ALL ON SEQUENCE m_addr.sds_cnee_cnor_hist_id_seq TO pi_admin;
GRANT SELECT, USAGE ON SEQUENCE m_addr.sds_cnee_cnor_hist_id_seq TO pi_addr_app_role;
GRANT SELECT ON SEQUENCE m_addr.sds_cnee_cnor_hist_id_seq TO pi_addr_usr_role;
GRANT SELECT, USAGE ON SEQUENCE m_addr.sds_cnee_cnor_hist_id_seq TO pi_addr_mgr_role WITH GRANT OPTION;
--GRANT SELECT, USAGE ON SEQUENCE m_addr.sds_cnee_cnor_hist_id_seq TO pidbusr;
ALTER TABLE m_addr.sds_cnee_cnor_hist OWNER TO pi_admin;
GRANT ALL ON TABLE m_addr.sds_cnee_cnor_hist TO pi_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE m_addr.sds_cnee_cnor_hist TO pi_addr_app_role;
GRANT SELECT ON TABLE m_addr.sds_cnee_cnor_hist TO pi_addr_usr_role;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_addr.sds_cnee_cnor_hist TO pi_addr_mgr_role WITH GRANT OPTION;
--GRANT INSERT, SELECT, UPDATE ON TABLE m_addr.sds_cnee_cnor_hist TO pidbusr;
GRANT SELECT ON TABLE m_addr.sds_cnee_cnor_hist TO pi_perge_usr;


==============================================================================================================================

-------------------------------------------------------------------------------
-- Author..........: Aman Gupta
-- Created.........: 21 April 2023 15:34:15
-- Model File Name.: D:\new-code-commit\propeli-db\ERWIN_model\SIT\Propel-i_contract_credit.erwin
-- Purpose.........: 
-- Copyright © 2021, SafeExpress India Pvt. Ltd., All Rights Reserved
-------------------------------------------------------------------------------
-- Modification History
--
--
--
---- =============================================================================================================================================================
------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE SEQUENCE credit_cntr.seq_cmdmnt_cnee_exclusion_id
INCREMENT BY 1
MINVALUE 1
NO MAXVALUE
START WITH 1
NO CYCLE;
ALTER SEQUENCE credit_cntr.seq_cmdmnt_cnee_exclusion_id OWNER TO pi_admin;
GRANT ALL ON SEQUENCE credit_cntr.seq_cmdmnt_cnee_exclusion_id TO pi_admin;
GRANT SELECT, USAGE ON SEQUENCE credit_cntr.seq_cmdmnt_cnee_exclusion_id TO pi_credit_app_role;
GRANT SELECT ON SEQUENCE credit_cntr.seq_cmdmnt_cnee_exclusion_id TO pi_credit_usr_role;
GRANT SELECT, USAGE ON SEQUENCE credit_cntr.seq_cmdmnt_cnee_exclusion_id TO pi_credit_mgr_role WITH GRANT OPTION;
--GRANT SELECT, USAGE ON SEQUENCE credit_cntr.seq_cmdmnt_cnee_exclusion_id TO pidbusr;
CREATE SEQUENCE credit_cntr.seq_cmdmnt_cnee_exclusion_hist_id
INCREMENT BY 1
MINVALUE 1
NO MAXVALUE
START WITH 1
NO CYCLE;
ALTER SEQUENCE credit_cntr.seq_cmdmnt_cnee_exclusion_hist_id OWNER TO pi_admin;
GRANT ALL ON SEQUENCE credit_cntr.seq_cmdmnt_cnee_exclusion_hist_id TO pi_admin;
GRANT SELECT, USAGE ON SEQUENCE credit_cntr.seq_cmdmnt_cnee_exclusion_hist_id TO pi_credit_app_role;
GRANT SELECT ON SEQUENCE credit_cntr.seq_cmdmnt_cnee_exclusion_hist_id TO pi_credit_usr_role;
GRANT SELECT, USAGE ON SEQUENCE credit_cntr.seq_cmdmnt_cnee_exclusion_hist_id TO pi_credit_mgr_role WITH GRANT OPTION;
--GRANT SELECT, USAGE ON SEQUENCE credit_cntr.seq_cmdmnt_cnee_exclusion_hist_id TO pidbusr;
CREATE SEQUENCE credit_cntr.seq_cmdmnt_cnee_exclusion_stg_id
INCREMENT BY 1
MINVALUE 1
NO MAXVALUE
START WITH 1
NO CYCLE;
ALTER SEQUENCE credit_cntr.seq_cmdmnt_cnee_exclusion_stg_id OWNER TO pi_admin;
GRANT ALL ON SEQUENCE credit_cntr.seq_cmdmnt_cnee_exclusion_stg_id TO pi_admin;
GRANT SELECT, USAGE ON SEQUENCE credit_cntr.seq_cmdmnt_cnee_exclusion_stg_id TO pi_credit_app_role;
GRANT SELECT ON SEQUENCE credit_cntr.seq_cmdmnt_cnee_exclusion_stg_id TO pi_credit_usr_role;
GRANT SELECT, USAGE ON SEQUENCE credit_cntr.seq_cmdmnt_cnee_exclusion_stg_id TO pi_credit_mgr_role WITH GRANT OPTION;
--GRANT SELECT, USAGE ON SEQUENCE credit_cntr.seq_cmdmnt_cnee_exclusion_stg_id TO pidbusr;
CREATE TABLE credit_cntr.cmdmnt_cnee_exclusion
( 
	id                   int4  NOT NULL ,
	cnee_id              int4  NOT NULL ,
	rec_identifier       int8  NULL ,
	ver                  integer  NULL ,
	descr                character varying(100)  NULL ,
	status               int2  NOT NULL ,
	attr1                character varying(100)  NULL ,
	attr2                character varying(100)  NULL ,
	attr3                integer  NULL ,
	attr4                integer  NULL ,
	effective_dt         timestamp  NULL ,
	exp_dt               timestamp  NULL ,
	crtd_dt              timestamp  NOT NULL   DEFAULT  current_timestamp,
	crtd_by              character varying(50)  NOT NULL ,
	upd_by               character varying(50)  NOT NULL ,
	upd_dt               timestamp  NOT NULL   DEFAULT  current_timestamp,
	cmdmnt_charge_id     integer  NULL 
);
ALTER TABLE credit_cntr.cmdmnt_cnee_exclusion OWNER TO pi_admin;
GRANT ALL ON TABLE credit_cntr.cmdmnt_cnee_exclusion TO pi_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE credit_cntr.cmdmnt_cnee_exclusion TO pi_credit_app_role;
GRANT SELECT ON TABLE credit_cntr.cmdmnt_cnee_exclusion TO pi_credit_usr_role;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE credit_cntr.cmdmnt_cnee_exclusion TO pi_credit_mgr_role WITH GRANT OPTION;
--GRANT INSERT, SELECT, UPDATE ON TABLE credit_cntr.cmdmnt_cnee_exclusion TO pidbusr;
--GRANT SELECT ON TABLE credit_cntr.cmdmnt_cnee_exclusion TO pi_perge_usr;
CREATE TABLE credit_cntr.cmdmnt_cnee_exclusion_hist
( 
	id                   int4  NOT NULL ,
	cnee_id              int4  NOT NULL ,
	rec_identifier       int8  NULL ,
	ver                  integer  NULL ,
	descr                character varying(100)  NULL ,
	status               int2  NOT NULL ,
	attr1                character varying(100)  NULL ,
	attr2                character varying(100)  NULL ,
	attr3                integer  NULL ,
	attr4                integer  NULL ,
	effective_dt         timestamp  NULL ,
	exp_dt               timestamp  NULL ,
	crtd_dt              timestamp  NOT NULL   DEFAULT  current_timestamp,
	crtd_by              character varying(50)  NOT NULL ,
	upd_by               character varying(50)  NOT NULL ,
	upd_dt               timestamp  NOT NULL   DEFAULT  current_timestamp,
	cmdmnt_charge_id     integer  NULL ,
	hist_id              integer  NOT NULL ,
	hist_crtd_dt         timestamp  NULL ,
	hist_crtd_by         varchar(50)  NULL 
);
ALTER TABLE credit_cntr.cmdmnt_cnee_exclusion_hist OWNER TO pi_admin;
GRANT ALL ON TABLE credit_cntr.cmdmnt_cnee_exclusion_hist TO pi_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE credit_cntr.cmdmnt_cnee_exclusion_hist TO pi_credit_app_role;
GRANT SELECT ON TABLE credit_cntr.cmdmnt_cnee_exclusion_hist TO pi_credit_usr_role;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE credit_cntr.cmdmnt_cnee_exclusion_hist TO pi_credit_mgr_role WITH GRANT OPTION;
--GRANT INSERT, SELECT, UPDATE ON TABLE credit_cntr.cmdmnt_cnee_exclusion_hist TO pidbusr;
--GRANT SELECT ON TABLE credit_cntr.cmdmnt_cnee_exclusion_hist TO pi_perge_usr;
CREATE TABLE credit_cntr.cmdmnt_cnee_exclusion_stg
( 
	id                   int4  NOT NULL ,
	cnee_id              int4  NOT NULL ,
	rec_identifier       int8  NULL ,
	ver                  integer  NULL ,
	descr                character varying(100)  NULL ,
	status               int2  NOT NULL ,
	attr1                character varying(100)  NULL ,
	attr2                character varying(100)  NULL ,
	attr3                integer  NULL ,
	attr4                integer  NULL ,
	effective_dt         timestamp  NULL ,
	exp_dt               timestamp  NULL ,
	crtd_dt              timestamp  NOT NULL   DEFAULT  current_timestamp,
	crtd_by              character varying(50)  NOT NULL ,
	upd_by               character varying(50)  NOT NULL ,
	upd_dt               timestamp  NOT NULL   DEFAULT  current_timestamp,
	cmdmnt_charge_id     integer  NULL 
);
ALTER TABLE credit_cntr.cmdmnt_cnee_exclusion_stg OWNER TO pi_admin;
GRANT ALL ON TABLE credit_cntr.cmdmnt_cnee_exclusion_stg TO pi_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE credit_cntr.cmdmnt_cnee_exclusion_stg TO pi_credit_app_role;
GRANT SELECT ON TABLE credit_cntr.cmdmnt_cnee_exclusion_stg TO pi_credit_usr_role;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE credit_cntr.cmdmnt_cnee_exclusion_stg TO pi_credit_mgr_role WITH GRANT OPTION;
--GRANT INSERT, SELECT, UPDATE ON TABLE credit_cntr.cmdmnt_cnee_exclusion_stg TO pidbusr;
--GRANT SELECT ON TABLE credit_cntr.cmdmnt_cnee_exclusion_stg TO pi_perge_usr;
ALTER TABLE cmdmnt_cnee_exclusion
ADD CONSTRAINT pk_cmdmnt_cnee_exclusion PRIMARY KEY (id);
ALTER TABLE cmdmnt_cnee_exclusion_hist
ADD CONSTRAINT pk_cmdmnt_cnee_exclusion_hist PRIMARY KEY (hist_id);
ALTER TABLE cmdmnt_cnee_exclusion_stg
ADD CONSTRAINT pk_cmdmnt_cnee_exclusion_stg PRIMARY KEY (id);
ALTER TABLE cmdmnt_cnee_exclusion
	ADD CONSTRAINT fk_cmdmnt_cnee_exclusion_cmdmnt_charge_id FOREIGN KEY (cmdmnt_charge_id) REFERENCES credit_cntr.cmdmnt_charge(id);
alter table credit_cntr.cmdmnt_cnee_exclusion add column name varchar(100) null,add column gstin_num varchar(50) NULL;
alter table credit_cntr.cmdmnt_cnee_exclusion_hist add column name varchar(100) null,add column gstin_num varchar(50) NULL;
alter table credit_cntr.cmdmnt_cnee_exclusion_stg add column name varchar(100) null,add column gstin_num varchar(50) NULL;
===========================================================================================

-------------------------------------------------------------------------------
-- Author..........: Aman Gupta
-- Created.........: 21 April 2023 14:46:48
-- Model File Name.: D:\new-code-commit\propeli-db\ERWIN_model\SIT\Propel-i_contract_prc.erwin
-- Purpose.........: 
-- Copyright © 2021, SafeExpress India Pvt. Ltd., All Rights Reserved
-------------------------------------------------------------------------------
-- Modification History
--
--
--
---- =============================================================================================================================================================
------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE SEQUENCE prc_cntr.seq_cmdmnt_cnee_exclusion_id
INCREMENT BY 1
MINVALUE 1
NO MAXVALUE
START WITH 1
NO CYCLE;
ALTER SEQUENCE prc_cntr.seq_cmdmnt_cnee_exclusion_id OWNER TO pi_admin;
GRANT ALL ON SEQUENCE prc_cntr.seq_cmdmnt_cnee_exclusion_id TO pi_admin;
GRANT SELECT, USAGE ON SEQUENCE prc_cntr.seq_cmdmnt_cnee_exclusion_id TO pi_prc_app_role;
GRANT SELECT ON SEQUENCE prc_cntr.seq_cmdmnt_cnee_exclusion_id TO pi_prc_usr_role;
GRANT SELECT, USAGE ON SEQUENCE prc_cntr.seq_cmdmnt_cnee_exclusion_id TO pi_prc_mgr_role WITH GRANT OPTION;
--GRANT SELECT, USAGE ON SEQUENCE prc_cntr.seq_cmdmnt_cnee_exclusion_id TO pidbusr;
CREATE SEQUENCE prc_cntr.seq_cmdmnt_cnee_exclusion_hist_id
INCREMENT BY 1
MINVALUE 1
NO MAXVALUE
START WITH 1
NO CYCLE;
ALTER SEQUENCE prc_cntr.seq_cmdmnt_cnee_exclusion_hist_id OWNER TO pi_admin;
GRANT ALL ON SEQUENCE prc_cntr.seq_cmdmnt_cnee_exclusion_hist_id TO pi_admin;
GRANT SELECT, USAGE ON SEQUENCE prc_cntr.seq_cmdmnt_cnee_exclusion_hist_id TO pi_prc_app_role;
GRANT SELECT ON SEQUENCE prc_cntr.seq_cmdmnt_cnee_exclusion_hist_id TO pi_prc_usr_role;
GRANT SELECT, USAGE ON SEQUENCE prc_cntr.seq_cmdmnt_cnee_exclusion_hist_id TO pi_prc_mgr_role WITH GRANT OPTION;
--GRANT SELECT, USAGE ON SEQUENCE prc_cntr.seq_cmdmnt_cnee_exclusion_hist_id TO pidbusr;
CREATE SEQUENCE prc_cntr.seq_cmdmnt_cnee_exclusion_stg_id
INCREMENT BY 1
MINVALUE 1
NO MAXVALUE
START WITH 1
NO CYCLE;
ALTER SEQUENCE prc_cntr.seq_cmdmnt_cnee_exclusion_stg_id OWNER TO pi_admin;
GRANT ALL ON SEQUENCE prc_cntr.seq_cmdmnt_cnee_exclusion_stg_id TO pi_admin;
GRANT SELECT, USAGE ON SEQUENCE prc_cntr.seq_cmdmnt_cnee_exclusion_stg_id TO pi_prc_app_role;
GRANT SELECT ON SEQUENCE prc_cntr.seq_cmdmnt_cnee_exclusion_stg_id TO pi_prc_usr_role;
GRANT SELECT, USAGE ON SEQUENCE prc_cntr.seq_cmdmnt_cnee_exclusion_stg_id TO pi_prc_mgr_role WITH GRANT OPTION;
--GRANT SELECT, USAGE ON SEQUENCE prc_cntr.seq_cmdmnt_cnee_exclusion_stg_id TO pidbusr;
CREATE TABLE prc_cntr.cmdmnt_cnee_exclusion
( 
	id                   int4  NOT NULL ,
	cnee_id              int4  NOT NULL ,
	rec_identifier       int8  NULL ,
	ver                  int4  NULL ,
	status               int2  NOT NULL ,
	attr1                character varying(100)  NULL ,
	attr2                character varying(100)  NULL ,
	attr3                integer  NULL ,
	attr4                integer  NULL ,
	effective_dt         timestamp(6) without time zone  NOT NULL ,
	exp_dt               timestamp(6) without time zone  NULL ,
	crtd_dt              timestamp(6) without time zone  NOT NULL   DEFAULT  current_timestamp,
	crtd_by              character varying(50)  NOT NULL ,
	upd_dt               timestamp(6) without time zone  NOT NULL ,
	upd_by               character varying(50)  NOT NULL ,
	cmdmnt_charge_id     integer  NULL 
);
CREATE INDEX if1_cmdmnt_cnee_exclusion ON cmdmnt_cnee_exclusion
( 
	cmdmnt_charge_id ASC
);
ALTER TABLE prc_cntr.cmdmnt_cnee_exclusion OWNER TO pi_admin;
GRANT ALL ON TABLE prc_cntr.cmdmnt_cnee_exclusion TO pi_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE prc_cntr.cmdmnt_cnee_exclusion TO pi_prc_app_role;
GRANT SELECT ON TABLE prc_cntr.cmdmnt_cnee_exclusion TO pi_prc_usr_role;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE prc_cntr.cmdmnt_cnee_exclusion TO pi_prc_mgr_role WITH GRANT OPTION;
GRANT SELECT ON TABLE prc_cntr.cmdmnt_cnee_exclusion TO db_trend_ro_usr;
--GRANT INSERT, SELECT, UPDATE ON TABLE prc_cntr.cmdmnt_cnee_exclusion TO pidbusr;
--GRANT SELECT ON TABLE prc_cntr.cmdmnt_cnee_exclusion TO pi_perge_usr;
CREATE TABLE prc_cntr.cmdmnt_cnee_exclusion_hist
( 
	id                   int4  NOT NULL ,
	cmdmnt_charge_id     int4  NOT NULL ,
	cnee_id              int4  NOT NULL ,
	rec_identifier       int8  NULL ,
	ver                  int4  NULL ,
	status               int2  NOT NULL ,
	attr1                character varying(100)  NULL ,
	attr2                character varying(100)  NULL ,
	attr3                integer  NULL ,
	attr4                integer  NULL ,
	effective_dt         timestamp(6) without time zone  NOT NULL ,
	exp_dt               timestamp(6) without time zone  NULL ,
	crtd_dt              timestamp(6) without time zone  NOT NULL   DEFAULT  current_timestamp,
	crtd_by              character varying(50)  NOT NULL ,
	upd_dt               timestamp(6) without time zone  NOT NULL ,
	upd_by               character varying(50)  NOT NULL ,
	hist_id              integer  NOT NULL ,
	hist_crtd_by         varchar(50)  NOT NULL ,
	hist_crtd_dt         date  NOT NULL 
);
ALTER TABLE prc_cntr.cmdmnt_cnee_exclusion_hist OWNER TO pi_admin;
GRANT ALL ON TABLE prc_cntr.cmdmnt_cnee_exclusion_hist TO pi_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE prc_cntr.cmdmnt_cnee_exclusion_hist TO pi_prc_app_role;
GRANT SELECT ON TABLE prc_cntr.cmdmnt_cnee_exclusion_hist TO pi_prc_usr_role;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE prc_cntr.cmdmnt_cnee_exclusion_hist TO pi_prc_mgr_role WITH GRANT OPTION;
--GRANT INSERT, SELECT, UPDATE ON TABLE prc_cntr.cmdmnt_cnee_exclusion_hist TO pidbusr;
--GRANT SELECT ON TABLE prc_cntr.cmdmnt_cnee_exclusion_hist TO pi_perge_usr;
CREATE TABLE prc_cntr.cmdmnt_cnee_exclusion_stg
( 
	id                   int4  NOT NULL ,
	cmdmnt_charge_id     int4  NOT NULL ,
	cnee_id              int4  NOT NULL ,
	rec_identifier       int8  NULL ,
	ver                  int4  NULL ,
	status               int2  NOT NULL ,
	attr1                character varying(100)  NULL ,
	attr2                character varying(100)  NULL ,
	attr3                integer  NULL ,
	attr4                integer  NULL ,
	effective_dt         timestamp(6) without time zone  NOT NULL ,
	exp_dt               timestamp(6) without time zone  NULL ,
	crtd_dt              timestamp(6) without time zone  NOT NULL   DEFAULT  current_timestamp,
	crtd_by              character varying(50)  NOT NULL ,
	upd_dt               timestamp(6) without time zone  NOT NULL ,
	upd_by               character varying(50)  NOT NULL 
);
ALTER TABLE prc_cntr.cmdmnt_cnee_exclusion_stg OWNER TO pi_admin;
GRANT ALL ON TABLE prc_cntr.cmdmnt_cnee_exclusion_stg TO pi_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE prc_cntr.cmdmnt_cnee_exclusion_stg TO pi_prc_app_role;
GRANT SELECT ON TABLE prc_cntr.cmdmnt_cnee_exclusion_stg TO pi_prc_usr_role;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE prc_cntr.cmdmnt_cnee_exclusion_stg TO pi_prc_mgr_role WITH GRANT OPTION;
--GRANT INSERT, SELECT, UPDATE ON TABLE prc_cntr.cmdmnt_cnee_exclusion_stg TO pidbusr;
--GRANT SELECT ON TABLE prc_cntr.cmdmnt_cnee_exclusion_stg TO pi_perge_usr;
ALTER TABLE cmdmnt_cnee_exclusion
ADD CONSTRAINT pk_cmdmnt_cnee_exclusion PRIMARY KEY (id);
ALTER TABLE cmdmnt_cnee_exclusion_hist
ADD CONSTRAINT pk_cmdmnt_cnee_exclusion_hist PRIMARY KEY (hist_id);
ALTER TABLE cmdmnt_cnee_exclusion_stg
ADD CONSTRAINT pk_cmdmnt_cnee_exclusion_stg PRIMARY KEY (id);
ALTER TABLE cmdmnt_cnee_exclusion
	ADD CONSTRAINT fk_cmdmnt_cnee_exclusion_cmdmnt_charge_id FOREIGN KEY (cmdmnt_charge_id) REFERENCES prc_cntr.cmdmnt_charge(id);
alter table prc_cntr.cmdmnt_cnee_exclusion add column "descr" varchar(100);
alter table prc_cntr.cmdmnt_cnee_exclusion_hist add column "descr" varchar(100);
alter table prc_cntr.cmdmnt_cnee_exclusion_stg add column "descr" varchar(100);
alter table prc_cntr.cmdmnt_cnee_exclusion add column name varchar(100) null,add column gstin_num varchar(50) NULL;
alter table prc_cntr.cmdmnt_cnee_exclusion_hist add column name varchar(100) null,add column gstin_num varchar(50) NULL;
alter table prc_cntr.cmdmnt_cnee_exclusion_stg add column name varchar(100) null,add column gstin_num varchar(50) NULL;

