
Upon successful deployment, the console log should show something like
```text
You are now connected to database "fabricexplorer" as user "postgres".

waiting for server to shut down....2021-10-13 10:37:37.842 UTC [30] LOG:  received fast shutdown request
2021-10-13 10:37:37.844 UTC [30] LOG:  aborting any active transactions
2021-10-13 10:37:37.845 UTC [30] LOG:  worker process: logical replication launcher (PID 37) exited with exit code 1
2021-10-13 10:37:37.845 UTC [32] LOG:  shutting down
2021-10-13 10:37:37.870 UTC [30] LOG:  database system is shut down
 done
server stopped

PostgreSQL init process complete; ready for start up.

2021-10-13 10:37:37.950 UTC [1] LOG:  listening on IPv4 address "0.0.0.0", port 5432
2021-10-13 10:37:37.950 UTC [1] LOG:  listening on IPv6 address "::", port 5432
2021-10-13 10:37:37.953 UTC [1] LOG:  listening on Unix socket "/var/run/postgresql/.s.PGSQL.5432"
2021-10-13 10:37:37.968 UTC [69] LOG:  database system was shut down at 2021-10-13 10:37:37 UTC
2021-10-13 10:37:37.972 UTC [1] LOG:  database system is ready to accept connections
```
