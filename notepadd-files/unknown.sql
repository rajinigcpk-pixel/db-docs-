1.Metrics--
2.logs & events
3.long_running queries
4.Alerting
5.Dashboards--create new dashboards+add metrics on graphs
6.Dead locks--LOck situation.whenever 2 queries are running at the same table at a time it creates the lock.
7.Pids--samples-query samples-option-postgres pid
8.Users& hosts
9.state--samples-query samples-option-postgres state

CREATE INDEX credit_bill_batch_details_sfx_code_idx ON bil_credit.credit_bill_batch_details (sfx_code);


UPDATE  "waybl"."cust_waybill_stg" SET "id"='6316', "waybill_row"='0', "batch_id"='11', "attr1"=NULL, "attr2"=NULL, "attr3"=NULL, "attr4"=NULL, "descr"='final-demo', "cust_name"=NULL, "msa_id"='1171', "sfx_code"='SFX00011334', "rate_card_id"='24252', "rate_card"=NULL, "commercial_id"='25867', "commercial"=NULL, "consignor"=NULL, "consignee_id"='3317367', "consignee"=NULL, "waybill_num"='5665367', "e_waybill_num"=NULL, "e_waybill_count"=NULL, "effective_dt"='2023-07-17 21:54:22.291862', "exp_dt"='2023-07-17 21:54:22.291862', "box_num"=NULL, "actual_wt"='0.0000', "hub_dlvry_flag"='0', "vas_flag"=NULL, "status"='2608', "user_id"='pisfintg', "user_type"='pisfintg', "branch_id"='2117', "pick_up_dt"='2023-07-17', "batch_crtd_dt"='2023-07-17', "lkp_dod_type_id"=NULL, "dod_in_favour_of"=NULL, "pdc_dt"=NULL, "dod_amt"=NULL, "is_series_available"=NULL, "pickup_time"=NULL, "dest_pincode_id"='16227', "service_offering_id"='1', "lkp_biz_type_id"=NULL, "dest_pincode"=NULL, "lkp_waybl_curr_status_id"=NULL, "prdct_ctgy_id"=NULL, "product_ctgy_name"=NULL, "pkg_said_to_contain"='Readymade Garments', "consignor_id"='3349339', "booking_waybl_id"=NULL, "lkp_pack_type_id"=NULL, "lkp_pack_type_name"=NULL, "crtd_dt"='2023-07-17 21:54:22.291862', "crtd_by"=NULL, "upd_dt"='2023-07-17 21:54:22.291862' WHERE "id"='6316' AND "waybill_row"='0' AND "batch_id"='11' AND "attr1"is NULL AND "attr2"is NULL AND "attr3"is NULL AND "attr4"is NULL AND "descr"='final-demo' AND "cust_name"is NULL AND "msa_id"='1171' AND "sfx_code"='SFX00011334' AND "rate_card_id"='24252' AND "rate_card"is NULL AND "commercial_id"='25867' AND "commercial"is NULL AND "consignor"is NULL AND "consignee_id"='3317367' AND "consignee"is NULL AND "waybill_num"='5665367' AND "e_waybill_num"is NULL AND "e_waybill_count"is NULL AND "effective_dt"='2023-07-17 21:54:22.291862' AND "exp_dt"='2023-07-17 21:54:22.291862' AND "box_num"is NULL AND "actual_wt"='0.0000' AND "hub_dlvry_flag"='0' AND "vas_flag"is NULL AND "status"='2608' AND "user_id"='pisfintg' AND "user_type"='pisfintg' AND "branch_id"='2117' AND "pick_up_dt"='2023-07-17' AND "batch_crtd_dt"='2023-07-17' AND "lkp_dod_type_id"is NULL AND "dod_in_favour_of"is NULL AND "pdc_dt"is NULL AND "dod_amt"is NULL AND "is_series_available"is NULL AND "pickup_time"is NULL AND "dest_pincode_id"='16227' AND "service_offering_id"='1' AND "lkp_biz_type_id"is NULL AND "dest_pincode"is NULL AND "lkp_waybl_curr_status_id"is NULL AND "prdct_ctgy_id"is NULL AND "product_ctgy_name"is NULL AND "pkg_said_to_contain"='Readymade Garments' AND "consignor_id"='3349339' AND "booking_waybl_id"is NULL AND "lkp_pack_type_id"is NULL AND "lkp_pack_type_name"is NULL AND "crtd_dt"='2023-07-17 21:54:22.291862' AND "crtd_by"is NULL AND "upd_dt"='2023-07-17 21:54:22.291862'


SELECT * FROM pg_logical_slot_peek_changes(‘slot_name', NULL, NULL, 'include-timestamp', 'on');

sofqj4kkwuu6mv2g_00020527_6a5bdadb_2fc5_487f_bdfe_420c480e8f00