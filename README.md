# Solution to Database Assignment 4.

I did not manage to run the mysql as a container with docker, so I have just used a normal mysql-server installation on my machine running Ubuntu 18.04 locally.


## Logging
The log file also shows my first attempt at granting priviledges, which failed since I had the wrong syntax.

The log file shows I attempted to log in as one of the users and failed to query, so I reassigned privileges with the proper syntax (log file line 270) and reattempted querying.

I did not recreate the users since that operation was successfull the first time. From then on I managed to make the 3 proper queries and one failed query as needed.

The easiest way to find the objects of interest is to look for GRANT and INSERT keywords in the file. Since I have used the Mysql Workbench client the log file is a bit cluttered with all other operations used as well (like selects).

## Dump Strategy
The dump strategy was a simple use of mysqldump with the IT user. Normally a cron job would be used to periodically, usually once a day, make a backup of the database, and the backups for at least the last 2 weeks or last month would be kept on the server, plus a copy of the backup on another device.
