ENV:-QA

-----TABLE 1---------

CREATE TABLE retail_cntr.cmdmnt_cnee_exclusion (
	"id" int4 NOT NULL,
	cmdmnt_charge_id int4 NOT NULL,
	cnee_id int4 NOT NULL,
	"rec_identifier" int8 NULL,
	"ver" int4 NULL,
	"descr" varchar(100) NULL,
	status int2 NOT NULL,
	"attr1" varchar(100) NULL,
	"attr2" varchar(100) NULL,
	"attr3" int4 NULL,
	"attr4" int4 NULL,
	"effective_dt" timestamp NULL,
	"exp_dt" timestamp NULL,
	"crtd_dt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"crtd_by" varchar(50) NOT NULL,
	"upd_dt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"upd_by" varchar(50) NOT NULL,
	"name" varchar(100) NULL,
	"gstin_num" varchar(50) NULL,
	CONSTRAINT pk_cmdmnt_cnee_exclusion PRIMARY KEY (id)
);
CREATE INDEX if1_cmdmnt_cnee_exclusion ON retail_cntr.cmdmnt_cnee_exclusion USING btree (cmdmnt_charge_id);


ALTER TABLE retail_cntr.cmdmnt_cnee_exclusion ADD CONSTRAINT fk_cmdmnt_cnee_exclusion_cmdmnt_charge_id FOREIGN KEY (cmdmnt_charge_id) REFERENCES retail_cntr.cmdmnt_charge("id") ON DELETE RESTRICT ON UPDATE RESTRICT;
-- Permissions

ALTER TABLE retail_cntr.cmdmnt_cnee_exclusion OWNER TO pi_admin;
GRANT ALL ON TABLE retail_cntr.cmdmnt_cnee_exclusion TO pi_admin;
GRANT SELECT, INSERT, UPDATE ON TABLE retail_cntr.cmdmnt_cnee_exclusion TO pi_retail_app_role;
GRANT SELECT ON TABLE retail_cntr.cmdmnt_cnee_exclusion TO pi_retail_usr_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE retail_cntr.cmdmnt_cnee_exclusion TO pi_retail_mgr_role WITH GRANT OPTION;
GRANT SELECT ON TABLE retail_cntr.cmdmnt_cnee_exclusion TO db_trend_ro_usr;
GRANT SELECT, INSERT, UPDATE ON TABLE retail_cntr.cmdmnt_cnee_exclusion TO v_tomar;
GRANT SELECT, INSERT, UPDATE ON TABLE retail_cntr.cmdmnt_cnee_exclusion TO r_kotapati;

--SEQUENCE
CREATE SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_id
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions



ALTER SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_id OWNER TO pi_admin;
GRANT ALL ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_id TO pi_admin;
GRANT SELECT, USAGE ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_id TO pi_retail_app_role;
GRANT SELECT ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_id TO pi_retail_usr_role;
GRANT SELECT, USAGE ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_id TO pi_retail_mgr_role WITH GRANT OPTION;
GRANT USAGE ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_id TO r_kotapati;


-----TABLE 2------

CREATE TABLE retail_cntr.cmdmnt_cnee_exclusion_hist (
	hist_id bigserial NOT NULL,
	"id" int4 NOT NULL,
	cmdmnt_charge_id int4 NOT NULL,
	cnee_id int4 NOT NULL,
	"rec_identifier" int8 NULL,
	"ver" int4 NULL,
	"descr" varchar(100) NULL,
	status int4 NOT NULL,
	"attr1" varchar(100) NULL,
	"attr2" varchar(100) NULL,
	"attr3" int4 NULL,
	"attr4" int4 NULL,
	"effective_dt" timestamp NOT NULL,
	"exp_dt" timestamp NULL,
	"crtd_dt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"crtd_by" varchar(50) NOT NULL,
	"upd_dt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"upd_by" varchar(50) NOT NULL,
	"name" varchar(100) NULL,
	"gstin_num" varchar(50) NULL,
	hist_crtd_by varchar(50) NOT NULL,
	hist_crtd_dt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT pk_cmdmnt_cnee_exclusion_hist PRIMARY KEY (hist_id)
);
-- Permissions

ALTER TABLE retail_cntr.cmdmnt_cnee_exclusion_hist OWNER TO pi_admin;
GRANT ALL ON TABLE retail_cntr.cmdmnt_cnee_exclusion_hist TO pi_admin;
GRANT SELECT, INSERT, UPDATE ON TABLE retail_cntr.cmdmnt_cnee_exclusion_hist TO pi_retail_app_role;
GRANT SELECT ON TABLE retail_cntr.cmdmnt_cnee_exclusion_hist TO pi_retail_usr_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE retail_cntr.cmdmnt_cnee_exclusion_hist TO pi_retail_mgr_role WITH GRANT OPTION;
GRANT SELECT ON TABLE retail_cntr.cmdmnt_cnee_exclusion_hist TO db_trend_ro_usr;
GRANT SELECT, INSERT, UPDATE ON TABLE retail_cntr.cmdmnt_cnee_exclusion_hist TO v_tomar;
GRANT SELECT, INSERT, UPDATE ON TABLE retail_cntr.cmdmnt_cnee_exclusion_hist TO r_kotapati;
--SEQUENCE
CREATE SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_hist_id
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions


ALTER SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_hist_id OWNER TO pi_admin;
GRANT ALL ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_hist_id TO pi_admin;
GRANT SELECT, USAGE ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_hist_id TO pi_retail_app_role;
GRANT SELECT ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_hist_id TO pi_retail_usr_role;
GRANT SELECT, USAGE ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_hist_id TO pi_retail_mgr_role WITH GRANT OPTION;
GRANT USAGE ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_hist_id TO r_kotapati;

-------TABLE 3----------
CREATE TABLE retail_cntr.cmdmnt_cnee_exclusion_stg (
	"id" int4 NOT NULL,
	cmdmnt_charge_id int4 NULL,
	cnee_id int4 NULL,
	"rec_identifier" int8 NULL,
	"ver" int4 NULL,
	"descr" varchar(100) NULL,
	status int4 NULL,
	"attr1" varchar(100) NULL,
	"attr2" varchar(100) NULL,
	"attr3" int4 NULL,
	"attr4" int4 NULL,
	"effective_dt" timestamp NULL,
	"exp_dt" timestamp NULL,
	"crtd_dt" timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	"crtd_by" varchar(50) NULL,
	"upd_dt" timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	"upd_by" varchar(50) NULL,
	"name" varchar(100) NULL,
	"gstin_num" varchar(50) NULL,
	CONSTRAINT pk_cmdmnt_cnee_exclusion_stg PRIMARY KEY ("id")
);

-- Permissions

ALTER TABLE retail_cntr.cmdmnt_cnee_exclusion_stg OWNER TO pi_admin;
GRANT ALL ON TABLE retail_cntr.cmdmnt_cnee_exclusion_stg TO pi_admin;
GRANT SELECT, INSERT, UPDATE ON TABLE retail_cntr.cmdmnt_cnee_exclusion_stg TO pi_retail_app_role;
GRANT SELECT ON TABLE retail_cntr.cmdmnt_cnee_exclusion_stg TO pi_retail_usr_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE retail_cntr.cmdmnt_cnee_exclusion_stg TO pi_retail_mgr_role WITH GRANT OPTION;
GRANT SELECT ON TABLE retail_cntr.cmdmnt_cnee_exclusion_stg TO db_trend_ro_usr;
GRANT SELECT, INSERT, UPDATE ON TABLE retail_cntr.cmdmnt_cnee_exclusion_stg TO v_tomar;
GRANT SELECT, INSERT, UPDATE ON TABLE retail_cntr.cmdmnt_cnee_exclusion_stg TO r_kotapati;

--SEQUENCE
CREATE SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_stg_id
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_stg_id OWNER TO pi_admin;
GRANT ALL ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_stg_id TO pi_admin;
GRANT SELECT, USAGE ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_stg_id TO pi_retail_app_role;
GRANT SELECT ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_stg_id TO pi_retail_usr_role;
GRANT SELECT, USAGE ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_stg_id TO pi_retail_mgr_role WITH GRANT OPTION;
GRANT USAGE ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_stg_id TO r_kotapati;


===================================================

ENV:-New_UAT
-----TABLE 1---------

CREATE TABLE retail_cntr.cmdmnt_cnee_exclusion (
	"id" int4 NOT NULL,
	cmdmnt_charge_id int4 NOT NULL,
	cnee_id int4 NOT NULL,
	"rec_identifier" int8 NULL,
	"ver" int4 NULL,
	"descr" varchar(100) NULL,
	status int2 NOT NULL,
	"attr1" varchar(100) NULL,
	"attr2" varchar(100) NULL,
	"attr3" int4 NULL,
	"attr4" int4 NULL,
	"effective_dt" timestamp NULL,
	"exp_dt" timestamp NULL,
	"crtd_dt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"crtd_by" varchar(50) NOT NULL,
	"upd_dt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"upd_by" varchar(50) NOT NULL,
	"name" varchar(100) NULL,
	"gstin_num" varchar(50) NULL,
	CONSTRAINT pk_cmdmnt_cnee_exclusion PRIMARY KEY (id)
);
CREATE INDEX if1_cmdmnt_cnee_exclusion ON retail_cntr.cmdmnt_cnee_exclusion USING btree (cmdmnt_charge_id);


ALTER TABLE retail_cntr.cmdmnt_cnee_exclusion ADD CONSTRAINT fk_cmdmnt_cnee_exclusion_cmdmnt_charge_id FOREIGN KEY (cmdmnt_charge_id) REFERENCES retail_cntr.cmdmnt_charge("id") ON DELETE RESTRICT ON UPDATE RESTRICT;
-- Permissions



ALTER TABLE retail_cntr.cmdmnt_cnee_exclusion OWNER TO pi_admin;
GRANT ALL ON TABLE retail_cntr.cmdmnt_cnee_exclusion TO pi_admin;
GRANT SELECT, INSERT, UPDATE ON TABLE retail_cntr.cmdmnt_cnee_exclusion TO pi_retail_app_role;
GRANT SELECT ON TABLE retail_cntr.cmdmnt_cnee_exclusion TO pi_retail_usr_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE retail_cntr.cmdmnt_cnee_exclusion TO pi_retail_mgr_role WITH GRANT OPTION;
GRANT SELECT ON TABLE retail_cntr.cmdmnt_cnee_exclusion TO db_trend_ro_usr;
GRANT SELECT, INSERT, UPDATE ON TABLE retail_cntr.cmdmnt_cnee_exclusion TO v_tomar;
GRANT SELECT, INSERT, UPDATE ON TABLE retail_cntr.cmdmnt_cnee_exclusion TO r_kotapati;

--SEQUENCE
CREATE SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_id
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions


ALTER SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_id OWNER TO pi_admin;
GRANT ALL ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_id TO pi_admin;
GRANT SELECT, USAGE ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_id TO pi_retail_app_role;
GRANT SELECT ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_id TO pi_retail_usr_role;
GRANT SELECT, USAGE ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_id TO pi_retail_mgr_role WITH GRANT OPTION;
GRANT USAGE ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_id TO r_kotapati;


-----TABLE 2------

CREATE TABLE retail_cntr.cmdmnt_cnee_exclusion_hist (
	hist_id bigserial NOT NULL,
	"id" int4 NOT NULL,
	cmdmnt_charge_id int4 NOT NULL,
	cnee_id int4 NOT NULL,
	"rec_identifier" int8 NULL,
	"ver" int4 NULL,
	"descr" varchar(100) NULL,
	status int4 NOT NULL,
	"attr1" varchar(100) NULL,
	"attr2" varchar(100) NULL,
	"attr3" int4 NULL,
	"attr4" int4 NULL,
	"effective_dt" timestamp NOT NULL,
	"exp_dt" timestamp NULL,
	"crtd_dt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"crtd_by" varchar(50) NOT NULL,
	"upd_dt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"upd_by" varchar(50) NOT NULL,
	"name" varchar(100) NULL,
	"gstin_num" varchar(50) NULL,
	hist_crtd_by varchar(50) NOT NULL,
	hist_crtd_dt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT pk_cmdmnt_cnee_exclusion_hist PRIMARY KEY (hist_id)
);
-- Permissions


ALTER TABLE retail_cntr.cmdmnt_cnee_exclusion_hist OWNER TO pi_admin;
GRANT ALL ON TABLE retail_cntr.cmdmnt_cnee_exclusion_hist TO pi_admin;
GRANT SELECT, INSERT, UPDATE ON TABLE retail_cntr.cmdmnt_cnee_exclusion_hist TO pi_retail_app_role;
GRANT SELECT ON TABLE retail_cntr.cmdmnt_cnee_exclusion_hist TO pi_retail_usr_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE retail_cntr.cmdmnt_cnee_exclusion_hist TO pi_retail_mgr_role WITH GRANT OPTION;
GRANT SELECT ON TABLE retail_cntr.cmdmnt_cnee_exclusion_hist TO db_trend_ro_usr;
GRANT SELECT, INSERT, UPDATE ON TABLE retail_cntr.cmdmnt_cnee_exclusion_hist TO v_tomar;
GRANT SELECT, INSERT, UPDATE ON TABLE retail_cntr.cmdmnt_cnee_exclusion_hist TO r_kotapati;

--SEQUENCE
CREATE SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_hist_id
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_hist_id OWNER TO pi_admin;
GRANT ALL ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_hist_id TO pi_admin;
GRANT SELECT, USAGE ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_hist_id TO pi_retail_app_role;
GRANT SELECT ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_hist_id TO pi_retail_usr_role;
GRANT SELECT, USAGE ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_hist_id TO pi_retail_mgr_role WITH GRANT OPTION;
GRANT USAGE ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_hist_id TO r_kotapati;

-------TABLE 3----------
CREATE TABLE retail_cntr.cmdmnt_cnee_exclusion_stg (
	"id" int4 NOT NULL,
	cmdmnt_charge_id int4 NULL,
	cnee_id int4 NULL,
	"rec_identifier" int8 NULL,
	"ver" int4 NULL,
	"descr" varchar(100) NULL,
	status int4 NULL,
	"attr1" varchar(100) NULL,
	"attr2" varchar(100) NULL,
	"attr3" int4 NULL,
	"attr4" int4 NULL,
	"effective_dt" timestamp NULL,
	"exp_dt" timestamp NULL,
	"crtd_dt" timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	"crtd_by" varchar(50) NULL,
	"upd_dt" timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	"upd_by" varchar(50) NULL,
	"name" varchar(100) NULL,
	"gstin_num" varchar(50) NULL,
	CONSTRAINT pk_cmdmnt_cnee_exclusion_stg PRIMARY KEY ("id")
);

-- Permissions



ALTER TABLE retail_cntr.cmdmnt_cnee_exclusion_stg OWNER TO pi_admin;
GRANT ALL ON TABLE retail_cntr.cmdmnt_cnee_exclusion_stg TO pi_admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE retail_cntr.cmdmnt_cnee_exclusion_stg TO pi_retail_app_role;
GRANT SELECT ON TABLE retail_cntr.cmdmnt_cnee_exclusion_stg TO pi_retail_usr_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE retail_cntr.cmdmnt_cnee_exclusion_stg TO pi_retail_mgr_role WITH GRANT OPTION;
GRANT SELECT ON TABLE retail_cntr.cmdmnt_cnee_exclusion_stg TO db_trend_ro_usr;
GRANT SELECT, INSERT, UPDATE ON TABLE retail_cntr.cmdmnt_cnee_exclusion_stg TO v_tomar;
GRANT SELECT, INSERT, UPDATE ON TABLE retail_cntr.cmdmnt_cnee_exclusion_stg TO r_kotapati;

--SEQUENCE
CREATE SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_stg_id
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_stg_id OWNER TO pi_admin;
GRANT ALL ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_stg_id TO pi_admin;
GRANT SELECT, USAGE ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_stg_id TO pi_retail_app_role;
GRANT SELECT ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_stg_id TO pi_retail_usr_role;
GRANT SELECT, USAGE ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_stg_id TO pi_retail_mgr_role WITH GRANT OPTION;
GRANT USAGE ON SEQUENCE retail_cntr.seq_cmdmnt_cnee_exclusion_stg_id TO r_kotapati;