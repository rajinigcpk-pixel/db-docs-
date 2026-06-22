CREATE SEQUENCE manifest.seq_bajaj_pkg_sticker_id
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 900000
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE manifest.seq_bajaj_pkg_sticker_id OWNER TO pi_admin;
GRANT ALL ON SEQUENCE manifest.seq_bajaj_pkg_sticker_id TO pi_admin;
GRANT USAGE, SELECT ON SEQUENCE manifest.seq_bajaj_pkg_sticker_id TO pi_manifest_app_role;
GRANT SELECT ON SEQUENCE manifest.seq_bajaj_pkg_sticker_id TO pi_manifest_usr_role;
GRANT USAGE, SELECT ON SEQUENCE manifest.seq_bajaj_pkg_sticker_id TO pi_manifest_mgr_role WITH GRANT OPTION;
GRANT USAGE ON SEQUENCE manifest.seq_bajaj_pkg_sticker_id TO pi_app_usr;


CREATE TABLE manifest.bajaj_pkg_sticker (
id int8 NOT NULL,
booking_waybl_id int8 NOT NULL,
waybl_num varchar(64) NULL,
pkg_num int4 NULL,
        pkg_id int8 NULL,
print_by_user_id varchar(50) NULL,
print_count int4 NULL,
print_dt timestamp(6) NULL,
print_flag int2 NULL,
print_loc_branch_id int4 NULL,
ref_num varchar(100) NULL,
scan_print_flag int2 NULL,
status_lid varchar(64) NULL,
sticker_num varchar(20) NULL,
attr1 varchar(100) NULL,
attr2 varchar(100) NULL,
attr3 int4 NULL,
attr4 int4 NULL,
source varchar(100) NULL,
descr varchar(100) NULL,
cust_pkg_num varchar(100) NULL,
effective_dt timestamp(6) NULL,
exp_dt timestamp(6) NULL,
status int4 NOT NULL,
        booking_branch_id int4 NULL,
        booking_branch varchar(100) NULL,
        dest_pincode int4 NULL,
        dlvry_gateway_branch_id int4 NULL,
        dlvry_gateway_branch varchar(100) NULL,
        sfx_code varchar(50) NULL,
        city varchar(100) NULL,
user_id varchar(50) NOT NULL,
user_type varchar(50) NOT NULL,
crtd_dt timestamp(6) NOT NULL,
upd_dt timestamp(6) NOT NULL,
CONSTRAINT bajaj_pkg_sticker_pkey PRIMARY KEY (id)
);


CREATE INDEX ie1_bajaj_pkg_sticker_sticker_num ON manifest.bajaj_pkg_sticker USING btree (sticker_num);
CREATE INDEX ie2_bajaj_pkg_sticker_booking_waybl_id ON manifest.bajaj_pkg_sticker USING btree (booking_waybl_id);
CREATE INDEX ie3__bajaj_pkg_sticker_cust_pkg_num ON manifest.bajaj_pkg_sticker USING btree (cust_pkg_num);




ALTER TABLE manifest.bajaj_pkg_sticker OWNER TO pi_admin;
GRANT ALL ON TABLE manifest.bajaj_pkg_sticker TO pi_admin;
GRANT SELECT, UPDATE, DELETE, INSERT ON TABLE manifest.bajaj_pkg_sticker TO pi_manifest_mgr_role WITH GRANT OPTION;
GRANT SELECT, UPDATE, DELETE, INSERT ON TABLE manifest.bajaj_pkg_sticker TO pi_manifest_app_role;
GRANT SELECT ON TABLE manifest.bajaj_pkg_sticker TO pi_manifest_usr_role;
GRANT SELECT ON TABLE manifest.bajaj_pkg_sticker TO pirousr;
GRANT SELECT ON TABLE manifest.bajaj_pkg_sticker TO s_ahmad_ansari;
GRANT SELECT, UPDATE, INSERT ON TABLE manifest.bajaj_pkg_sticker TO pi_app_usr;