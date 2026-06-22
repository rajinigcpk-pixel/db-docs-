GRANT connect ON database database_name TO username; 
GRANT USAGE ON SCHEMA schemaname TO username;
GRANT SELECT, INSERT, UPDATE ON all tables in schema schemaname  TO username;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA schemaname TO username;

ALTER TABLE waybl.booking_waybl ALTER COLUMN cust_ref_num TYPE varchar(100) USING cust_ref_num::varchar
CREATE INDEX credit_bill_batch_details_sfx_code_idx ON bil_credit.credit_bill_batch_details (sfx_code);


https://grafana.com/docs/grafana/latest/getting-started/get-started-grafana-prometheus/
https://grafana.com/tutorials/grafana-fundamentals/#create-a-grafana-managed-alert


CREATE TABLE waybl.otp_data (

              id int4 NOT NULL,

              booking_waybl_id int4 NULL,

              "attr1" varchar(100) NULL,

              "attr2" varchar(100) NULL,

              "attr3" int4 NULL,

              "attr4" int4 NULL,

              “otp” varchar(20),

              "exp_dt" timestamp(6) NULL,

              "status" int4 NOT NULL,

              "user_id" varchar(50) NOT NULL,

              "user_type" varchar(50) NOT NULL,

              "crtd_dt" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,

              "upd_dt" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,

              CONSTRAINT pk_otp_data PRIMARY KEY (id)

);

 

CREATE SEQUENCE waybl.otp_data_id_seq

              INCREMENT BY 1

              MINVALUE 1

              MAXVALUE 9223372036854775807

              START 1

              CACHE 1

              NO CYCLE;




