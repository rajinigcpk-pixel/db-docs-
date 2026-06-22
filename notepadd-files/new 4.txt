
https://www.javatpoint.com/dbms-sql-command


When should indexes be avoided?
Indexes should not be used on small tables. Indexes should not be used on columns that return a high percentage of data rows when used as a filter condition in a query's WHERE clause. For instance, you would not have an entry for the word "the" or "and" in the index of a book.

Which columns are not good for indexing?
Indexes should not be used on columns that contain a high number of NULL values. Indexes should not be used on the columns that are frequently manipulated.

Can a table have 2 indexes?
Multiple indexes are created on a single table, with each index containing a different set of columns. Multi-column indexes are created on a single table, with each index containing two or more columns. Multiple indexes can improve the performance of queries that use different combinations of columns.

CREATE UNIQUE INDEX air_freight_cmrcl_pkey ON assoc_air_freight_cntr.air_freight_cmrcl USING btree (id)



            Resources: 
                DMSEvent: 
                    Type: AWS::DMS::EventSubscription 
                    Properties: 
                        Enabled: true 
                        EventCategories: State Change 
                        SnsTopicArn: arn:aws:sns:us-east-1:123456789:testSNS 
                        SourceIds: [] 
                        SourceType: replication-task
						
						=============================================
	Cluster-level metrics for Amazon Aurora:-
----------------------------------------------
1.AuroraGlobalDBDataTransferBytes
2.AuroraGlobalDBProgressLag
3.AuroraGlobalDBReplicatedWriteIO
4.AuroraGlobalDBReplicationLag
5.AuroraGlobalDBRPOLag
6.AuroraVolumeBytesLeftTotal
7.BacktrackChangeRecordsCreationRate
8.BacktrackChangeRecordsStored
9.BackupRetentionPeriodStorageUsed
10.ServerlessDatabaseCapacity
11.SnapshotStorageUsed
12.TotalBackupStorageBilled
13.VolumeBytesUsed
14.VolumeReadIOPs
15.VolumeWriteIOPs

Instance-level metrics for Amazon Aurora
------------------------------------------------
1.AbortedClients
2.ActiveTransactions
3.ACUUtilization
4.AuroraBinlogReplicaLag
5.AuroraReplicaLag
6.AuroraReplicaLagMaximum
7.AuroraReplicaLagMinimum
8.AuroraSlowConnectionHandleCount
9.AuroraSlowHandshakeCount
10.BacktrackWindowActual
11.BacktrackWindowAlert
12.BlockedTransactions
13.BufferCacheHitRatio
14.CommitLatency
15.CommitThroughput
16.ConnectionAttempts
17.CPUCreditBalance		
18.CPUCreditUsage
19.CPUSurplusCreditBalance
20.CPUUtilization
21.DatabaseConnections
22.DDLLatency
23.DDLThroughput
24.Deadlocks
25.DeleteLatency
26.DeleteThroughput
27.DiskQueueDepth
28.DMLThroughput
29.EngineUptime
30.FreeableMemory
31.FreeLocalStorage
32.InsertLatency
33.InsertThroughput
34.LoginFailures
35.MaximumUsedTransactionIDs
36.NetworkReceiveThroughput
37.NetworkThroughput
38.NetworkTransmitThroughput
39.NumBinaryLogFiles
40.Queries
41.RDSToAuroraPostgreSQLReplicaLag
42.ReadIOPS
43.ReadLatency
44.ReadThroughput
45.ReplicationSlotDiskUsage
46.ResultSetCacheHitRatio
47.RollbackSegmentHistoryListLength
48.RowLockTime,SelectLatency,SelectThroughput,StorageNetworkReceiveThroughput,StorageNetworkThroughput,StorageNetworkTransmitThroughput,SumBinaryLogSize,SwapUsage,TempStorageIOPS,TempStorageThroughput,TransactionLogsDiskUsage,UpdateLatency,UpdateThroughput,WriteIOPS,WriteLatency,WriteThroughput.

Amazon CloudWatch usage metrics for Amazon Aurora:-
-----------------------------------------------------------------
1.DBClusterParameterGroups
2.AuroraEstimatedSharedMemoryBytes
3.DBClusterParameterGroups
4.DBClusters
5.DBInstances
6.DBParameterGroups
7.DBSubnetGroups
8.ManualClusterSnapshots
9.OptionGroups
10.ReservedDBInstances
11.

						
