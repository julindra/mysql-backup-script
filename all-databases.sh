#!/bin/sh

TZ=Asia/Jakarta date #change the timezone
nowdate=$(date +%d%m%Y_%H%M)
mysqldump -A -u username -p password | gzip > "/home/user/backup/"