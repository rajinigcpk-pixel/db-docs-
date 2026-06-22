df -h
ls -ltr
sudo -i
lsblk
lsblk -f
chown -R postgres:postgres /test
chmod -R 777 /test
cat /etc/redhat-release
uname -a
su - postgres
ps -ef | grep postgres
cd /data
rm -rf .sql
echo $PATH
export $pg_home=

vi test
:wq
cat test

\l+
\db+
\dt+
\d+
\d schemaname.tblname
\dn+
\du+
\dx+
\dp+
\dv+





ls: List files and directories in the current directory.
pwd: Print the current working directory.
cd: Change the current directory.
touch: Create an empty file.
mkdir: Create a new directory.
rmdir: Remove a directory (if empty).
rm: Remove files or directories.
cp: Copy files and directories.
mv: Move or rename files and directories.
cat: Concatenate and display file contents.
more or less: View file contents one page at a time.
head: Display the beginning of a file.
tail: Display the end of a file.
grep: Search for text patterns in files.
find: Search for files and directories.
ps: Display information about running processes.
kill: Terminate processes.
top: Monitor system activity and processes.
df: Display disk space usage.
du: Display directory space usage.
free: Display memory usage.
uname: Display system information.
date: Display the current date and time.
tar: Create or extract compressed archives.
zip and unzip: Create and extract ZIP archives.
wget or curl: Download files from the internet.
ssh: Securely access remote systems.
scp: Securely copy files between systems.
ping: Test network connectivity to a host.
ifconfig or ip: Network interface configuration.
netstat or ss: Network statistics.
chmod: Change file permissions.
chown: Change file ownership.
passwd: Change user password.
useradd and userdel: Add and delete user accounts.
groupadd and groupdel: Add and delete groups.
sudo: Execute commands as a superuser.
su: Switch to another user account.
shutdown and reboot: Shutdown or restart the system.
grep: Search for patterns in text files.
awk and sed: Text processing and manipulation tools.
tee: Redirect output to a file and the screen.
touch: Create empty files or update file timestamps.
lsblk: List block devices and their attributes.
mount and umount: Mount and unmount filesystems.
df and du: Display disk space usage.
history: View command history.
man: Display manual pages for commands.
file: Determine file type.
nc: Netcat, a versatile networking utility for reading/writing network connections.



listen_addresses: 
port:
data_directory:
max_connections
shared_buffers:
effective_cache_size:
work_mem:
maintenance_work_mem: 
wal_level:
timezone:
autovacuum:
log_statement: 





WITH tbl AS
  (SELECT table_schema,
          TABLE_NAME,
          pg_size_pretty(pg_relation_size('"'||table_schema||'"."'||table_name||'"')) as table_size
   FROM information_schema.tables
   WHERE TABLE_NAME not like 'pg_%'
     AND table_schema not  in ('information_schema','pg_catalog','public'))
SELECT table_schema,
       TABLE_NAME,
       table_size,
       (xpath('/row/c/text()', query_to_xml(format('select count(*) as c from %I.%I', table_schema, TABLE_NAME), FALSE, TRUE, '')))[1]::text::int AS rows_count
FROM tbl
ORDER BY rows_count DESC;


====================================
WITH rc(schema_name,tbl) AS (
  select s.n,rowcount_all(s.n) from (values ('schema1'),('schema2')) as s(n)
)
SELECT schema_name,(tbl).* FROM rc;

=====================================
SELECT * FROM get_all_records();

=============================================

   with tbl as
  (
select
	table_schema,
	TABLE_NAME,
	pg_size_pretty(pg_relation_size('"' || table_schema || '"."' || table_name || '"')) as table_size
from
	information_schema.tables
where
	TABLE_NAME not like 'pg_%'
	and table_schema  in ('credit_cntr'))
select
	table_schema,
	TABLE_NAME,
	table_size,
	(xpath('/row/c/text()',
	query_to_xml(format('select count(*) as c from %I.%I',
	table_schema,
	TABLE_NAME),
	false,
	true,
	'')))[1]::text::int as rows_count
from
	tbl
order by
	rows_count desc;
	
	
	Good morning sir,
	
	
	                  As we discussed.I request You sir i want to work from home from November20th to december 31st.please kindly Approve the requested work from home.
					  
					  -----------------------------------------------
					  
					  ‹Aman› - 2kpcjkh6ikofiu63_00016402_7f514566_e4ce_419a_a49e_561b4a1d9c8c 281 kB true n3rgndrqsklllt57_00016401_4f1a504a_1680_4658_b934_28f8aba5cda0 960 MB true ngu3khaaeefpdnzl_00017102_c87212b0_558d_41ec_a890_a1011049913b 2265 kB true
Ayachitula, Siva Kumar
1:00 PM
select * from pg_replication_slots;
‹Aman›
1:01 PM
OTRS_999999_before_change_202402281301_pg_replication_slots.csv
1.4 KB
Ayachitula, Siva Kumar
1:02 PM
SELECT slot_name, pg_size_pretty(pg_wal_lsn_diff(pg_current_wal_lsn(),restart_lsn)) AS replicationSlotLag, 
active FROM pg_replication_slots ;



"slot_name","replicationslotlag","active"
aojbo7ghijs2btop_00016402_cd08cb9c_d43b_4e37_9eff_05085bfee9f1,"1065 kB",true
"3nq4oidgw757x2gc_00016510_39d3fb8c_6520_423f_a382_fb1f535ebdd8","1878 kB",true
lqjpyidh7lfwjlck_00082926_5d37b07f_b455_46fb_a9e3_9d8b005953ff,"8691 kB",true
edtgxosapawsvybe_00016629_e352b435_731d_4261_bab3_10f2f3056893,"439 kB",true
quxbamz75pzwc2xi_00016660_7ff577c3_c4bc_4269_a109_c6f3bce396cf,"366 kB",true
lbkpvjp7ln5ndoen_00016401_10e45755_63df_401f_b3ed_d9b469386ee5,"24 kB",true
bltrp5waq5lzdgoj_00017163_eb7d4aff_292b_4330_9de5_c0285a5a3d67,"66 kB",true
xiwq3pchjcmh7alz_00017447_71355d41_70af_4f03_aaa3_5c59701e3853,"24 kB",true


select bookingway0_.id as id1_2_0_, bookingway0_.crtd_dt as crtd_dt2_2_0_, bookingway0_.status as status3_2_0_, bookingway0_.upd_dt as upd_dt4_2_0_, bookingway0_.user_id as user_id5_2_0_, bookingway0_.user_type as user_typ6_2_0_, bookingway0_.actual_wt as actual_w7_2_0_, bookingway0_.booking_branch_id as booking_8_2_0_, bookingway0_.booking_req_id as booking_9_2_0_, bookingway0_.lkp_branch_mop_id as lkp_bra10_2_0_, bookingway0_.lkp_biz_type_id as lkp_biz11_2_0_, bookingway0_.cgst_amt as cgst_am12_2_0_, bookingway0_.charge_wt as charge_13_2_0_, bookingway0_.cmrcl_id as cmrcl_i14_2_0_, bookingway0_.cnee_id as cnee_id15_2_0_, bookingway0_.cnor_id as cnor_id16_2_0_, bookingway0_.lkp_cust_type_id as lkp_cus17_2_0_, bookingway0_.dlvry_dt as dlvry_d18_2_0_, bookingway0_.dlvry_pkg as dlvry_p19_2_0_, bookingway0_.dest_pincode_id as dest_pi20_2_0_, bookingway0_.dlvry_gateway_branch_id as dlvry_g21_2_0_, bookingway0_.dod_amt as dod_amt22_2_0_, bookingway0_.dod_dacc_flag as dod_dac23_2_0_, bookingway0_.lkp_dod_type_id as lkp_dod24_2_0_, bookingway0_.ewaybl_avl_flag as ewaybl_25_2_0_, bookingway0_.ewaybl_req_flag as ewaybl_26_2_0_, bookingway0_.lkp_ex_zone as lkp_ex_27_2_0_, bookingway0_.gst_amt as gst_amt28_2_0_, bookingway0_.gst_id as gst_id29_2_0_, bookingway0_.gttl_amt as gttl_am30_2_0_, bookingway0_.hub_dlvry_branch_id as hub_dlv31_2_0_, bookingway0_.hub_dlvry_flag as hub_dlv32_2_0_, bookingway0_.igst_amt as igst_am33_2_0_, bookingway0_.lkp_lbh_uom_id as lkp_lbh34_2_0_, bookingway0_.msa_cust_id as msa_cus35_2_0_, bookingway0_.ncv_flag as ncv_fla36_2_0_, bookingway0_.payee_name as payee_n37_2_0_, bookingway0_.lkp_pymt_method_id as lkp_pym38_2_0_, bookingway0_.pdc_dt as pdc_dt39_2_0_, bookingway0_.pickup_branch_id as pickup_40_2_0_, bookingway0_.pickup_dt as pickup_41_2_0_, bookingway0_.lkp_pickup_status_id as lkp_pic42_2_0_, bookingway0_.lkp_pickup_type_id as lkp_pic43_2_0_, bookingway0_.pkg_said_to_contain as pkg_sai44_2_0_, bookingway0_.pol_co_name as pol_co_45_2_0_, bookingway0_.pol_exp_dt as pol_exp46_2_0_, bookingway0_.pol_num as pol_num47_2_0_, bookingway0_.prc_cntr_id as prc_cnt48_2_0_, bookingway0_.rate_card_id as rate_ca49_2_0_, bookingway0_.lkp_safext_type_id as lkp_saf50_2_0_, bookingway0_.service_offering_id as service51_2_0_, bookingway0_.sfx_prc_cntr_code as sfx_prc52_2_0_, bookingway0_.sgst_amt as sgst_am53_2_0_, bookingway0_.shpmnt_dt as shpmnt_54_2_0_, bookingway0_.lkp_to_zone as lkp_to_55_2_0_, bookingway0_.tot_amt as tot_amt56_2_0_, bookingway0_.tot_pkg_count as tot_pkg57_2_0_, bookingway0_.val_decl_flag as val_dec58_2_0_, bookingway0_.volume_wt as volume_59_2_0_, bookingway0_.waybl_num as waybl_n60_2_0_, bookingway0_.lkp_waybl_curr_status_id as lkp_way61_2_0_, bookingway0_.lkp_zone_matrix as lkp_zon62_2_0_ from waybl.booking_waybl bookingway0_ where bookingway0_.id=$1

changes the Application and Manager Passwords

Dear Aman,


        Please find the attached document and scripts as per your request.

					  