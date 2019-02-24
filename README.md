Solution to Database Assignment 4.

I did not manage to run the mysql as a container with docker, so I have just used a normal mysql-server installation on my machine running Ubuntu 18.04 locally.

To be noted: The log file also shows my first attempt at creating the users and granting priviledges, which failed since I had the wrong syntax. The log file shows I attempted to log in as one of the users and failed to query, so I reassigned privileges with the proper syntax (log file line 270) and reattempted querying. From then on I managed to make the 3 proper queries and one failed query as needed.

The dump strategy was a simple use of mysqldump with it user. Normally a cron job would be used to periodically, usually once a day, make a backup of the database, and the backups for at least the last 2 weeks or last month would be kept on the server, plus a copy of the backup on another device.
