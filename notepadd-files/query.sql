"SELECT datname, count(*) FROM pg_stat_activity WHERE state = 'idle'  AND (now() - query_start) > INTERVAL '1 minute' GROUP BY datname;" 
"SELECT datname, count(*) FROM pg_stat_activity WHERE state = 'idle'  AND (now() - query_start) > INTERVAL '1 minute' GROUP BY datname;" 
