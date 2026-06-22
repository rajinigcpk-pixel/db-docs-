QA:-
---------------
CREATE TABLE bil_credit.credit_bill_kafka ( 
id int8 NOT NULL, 
batch_id int8 NOT NULL, 
batch_detail_id int8 NOT NULL, 
bill_id int8 NOT NULL, 
bill_number varchar(960) NULL, 
request_json TEXT, 
topic_name varchar(960) NULL, 
kafka_flag varchar(960) NULL, 
correlation_id varchar(255) NULL, 
message varchar(255) NULL, 
phase varchar(255) NULL, 
status varchar(255) NULL, 	 
attr1 varchar(255) NULL, 
attr2 varchar(255) NULL, 
attr3 varchar(255) NULL, 
attr4 varchar(255) NULL, 
attr5 varchar(255) NULL, 
cr_by varchar(255) NULL, 
cr_dt timestamp(6) NULL, 
upd_by varchar(255) NULL, 
upd_dt timestamp(6) NULL, 
CONSTRAINT credit_bills_kafka_pkey PRIMARY KEY (id) 
); 



-- Permissions

ALTER TABLE bil_credit.credit_bill_kafka OWNER TO postgres;
GRANT ALL ON TABLE bil_credit.credit_bill_kafka TO postgres;
GRANT SELECT ON TABLE bil_credit.credit_bill_kafka TO pi_credit_ro_role;
GRANT SELECT ON TABLE bil_credit.credit_bill_kafka TO db_trend_ro_usr;
GRANT SELECT, INSERT, UPDATE ON TABLE bil_credit.credit_bill_kafka TO pi_qa_usr;



CREATE SEQUENCE bil_credit.credit_bill_kafka_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bil_credit.credit_bill_kafka_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE bil_credit.credit_bill_kafka_id_seq TO postgres;
GRANT USAGE ON SEQUENCE bil_credit.credit_bill_kafka_id_seq TO pi_qa_usr;

------------------------
UAT:-
=========

CREATE TABLE bil_credit.credit_bill_kafka ( 
id int8 NOT NULL, 
batch_id int8 NOT NULL, 
batch_detail_id int8 NOT NULL, 
bill_id int8 NOT NULL, 
bill_number varchar(960) NULL, 
request_json TEXT, 
topic_name varchar(960) NULL, 
kafka_flag varchar(960) NULL, 
correlation_id varchar(255) NULL, 
message varchar(255) NULL, 
phase varchar(255) NULL, 
status varchar(255) NULL, 	 
attr1 varchar(255) NULL, 
attr2 varchar(255) NULL, 
attr3 varchar(255) NULL, 
attr4 varchar(255) NULL, 
attr5 varchar(255) NULL, 
cr_by varchar(255) NULL, 
cr_dt timestamp(6) NULL, 
upd_by varchar(255) NULL, 
upd_dt timestamp(6) NULL, 
CONSTRAINT credit_bills_kafka_pkey PRIMARY KEY (id) 
); 


ALTER TABLE bil_credit.credit_bill_kafka OWNER TO postgres;
GRANT ALL ON TABLE bil_credit.credit_bill_kafka TO postgres;
GRANT SELECT ON TABLE bil_credit.credit_bill_kafka TO pi_credit_ro_role;
GRANT SELECT ON TABLE bil_credit.credit_bill_kafka TO db_trend_ro_usr;

CREATE SEQUENCE bil_credit.credit_bill_kafka_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bil_credit.credit_bill_kafka_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE bil_credit.credit_bill_kafka_id_seq TO postgres;
