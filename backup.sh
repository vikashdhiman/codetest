#!/bin/bash

# This is MySQL backup script.

mysql_user="backup"
mysql_user_pass="123456"
mysql_host="db_backup.server.com"
mysql_db_name="swift_db"

mysqldump -h "$mysql_host" -u "$mysql_user" -p"$mysql_user_pass" $mysql_db_name > /home/dhiman/db_backup.sql

# Compress it:

tar -cpzf baclup_db.sql.gz /home/dhiman/db_backup.sql

s3 cp baclup_db.sql.gz s3://backup-mysql/

exit;
