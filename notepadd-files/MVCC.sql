https://stormatics.tech/umairs-planet-postgresql/improving-update-query-performance-using-heap-only-tuples-hot

-------
Understanding MVCC
MVCC is a fundamental concept in PostgreSQL and many other relational database systems. It allows multiple transactions to occur concurrently while maintaining data consistency. Imagine multiple users accessing the same data simultaneously – MVCC ensures they each get a consistent view without locking others out. It achieves this by creating multiple versions of a row when data is modified, each with a unique transaction ID.

Snapshot Isolation: Each transaction in PostgreSQL operates on a specific “snapshot” of the data. This snapshot represents a consistent view of the database at the start of the transaction. Any changes made by other transactions after the snapshot are not visible to the current transaction.
-------------------
Versioning: When a row is updated or deleted, a new version of that row is created, rather than modifying or removing the original row. This ensures that other transactions can still access the original version if needed.
-----------
MVCC’s Upsides:-
-----------------
1.High concurrency: Multiple transactions can read data simultaneously without blocking each other.
2.Data consistency: Transactions don’t interfere with each other’s updates, ensuring data integrity.
3.Point-in-time querying: MVCC enables the retrieval of data as it existed at a specific moment in time.

MVCC’s Downsides:-
-----------------
While MVCC is essential for maintaining data integrity, it can pose challenges for update-heavy workloads:

1.Disk Bloat: MVCC creates new versions of updated rows, leaving old versions behind. Over time, this can lead to disk bloat, affecting database performance and storage efficiency.
2.Vacuuming Overhead: PostgreSQL runs a process called “vacuuming” to reclaim space taken up by obsolete row versions. However, this process can be resource-intensive and may cause performance bottlenecks.
3.Locking Conflicts: Sometimes, update queries can cause lock conflicts, impacting concurrent access. Locks are essential for ensuring data integrity, but they can hinder performance.
-------------------------
-------------------------

Introducing Heap-Only Tuples (HOT)
Heap-only tuples, also known as HOT, are PostgreSQL’s answer to the update query performance issues caused by MVCC. These tuples allow PostgreSQL to mark a row as “dead” and physically reuse the space it occupies in the table. This process eliminates the need to keep multiple versions of the same row, reducing I/O and improving query performance.

How Heap-Only Tuples Work
Reusing Space: When an update is performed on a row, PostgreSQL attempts to reuse the space occupied by the original version of the row. If the new row version is smaller than the old one, it can fit into the same location, saving space.
Reduced Performance Overhead: By reusing space, query performance can improve since there are fewer versions of rows to scan during queries.
Less Data Bloat: Heap-Only Tuples help reduce data bloat, making your database more efficient in terms of storage utilization.
When to Use Heap-Only Tuples
Heap-only tuples are a powerful tool, but they have limitations. You should consider using them in the following scenarios:

Frequent Updates: If your application frequently updates rows, heap-only tuples can significantly improve query performance.
Read-Heavy Workloads: Applications with read-heavy workloads can benefit from the reduced I/O and improved query response times.
Storage Concerns: Heap-only tuples allow you to reclaim space more efficiently if you can tolerate some latency between updates and space reclamation.
When Not to Use Heap-Only Tuples
While heap-only tuples can be a game-changer, they may not be suitable for all situations:

Index Changes: If your update query changes indexed columns or the table structure, HOTs won’t be of much help.
You Use Large Objects (e.g., BLOBs): Heap-Only Tuples are not effective with large objects, so they may not be suitable if your data primarily consists of large binary objects.
You Need to Maintain Historical Data: If you require a complete history of data changes (e.g., for auditing purposes), Heap-Only Tuples may not be the best choice as they overwrite old versions of rows.
Conclusion
PostgreSQL’s heap-only tuples provide a valuable solution to the performance challenges posed by MVCC in update-heavy scenarios. They allow application developers to optimize query performance and reduce I/O overhead. However, it’s essential to use heap-only tuples judiciously, considering the specific needs of your application and the trade-offs involved. By understanding when to leverage this feature and when to avoid it, you can ensure your PostgreSQL database operates at peak efficiency while maintaining data integrity.

