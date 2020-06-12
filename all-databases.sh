#!/bin/sh

TZ=Asia/Jakarta date #change the timezone
nowdate=$(date +%d%m%Y_%H%M)
mysqldump -A -uusername -ppassword | gzip > "/backup/db/dump-$nowdate.sql.gz"
