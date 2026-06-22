                               Propel-i_DB_Architecture          
							   ------------------------
							   ------------------------

     5 Hosts:   37 DB's
------------------------

1.Associate---11 DB's
2.MDM----------8 DB's
3.Billing-----10 DB's
4.Booking------6 DB's
5.Contract-----3 DB's


     4 Environments:
------------------------
1.SIT
2.UAT
3.PROD
4.PRE-PROD

  Main:  
------------------------ 
1.SIT 
->1host under 36db's 36schemas
2.UAT
->5hosts distributed 36db's under 36schemas
3.PROD
->5hosts distributed 36db's under 36schemas
4.PRE-PROD
->1host under 36db's 36schemas



  Reporting:
------------------                      
1.SIT  
->1DB under multiple schemas    
2.UAT
->1DB under multiple schemas
3.PROD
->1DB under multiple schemas
4.PRE-PROD 
->No db


Backend Updates:   check OTRS number,check howmany rows update
---------------------------
-->select query running on final report.after we do on Rollback->take before backup.
-->update running on the required table.after we do on Commit-->we need to mention upd_by='RK',upd_date=now().
-->select query running on final report.after we do on Rollback->take after backup.


