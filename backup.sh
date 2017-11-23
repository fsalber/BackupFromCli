#!/bin/bash

Logfile="/srv/backups/logs/replication/backup$(date '+%Y%m%d%H').log"
BaseFolder="/home/"
DestFolder="root@localhost:/srv/backups/home/"
touch $Logfile

echo "Start saving" >> $Logfile

rsync -e "ssh" --exclude="git/" --exclude="composer.phar" --exclude="www/" -avz --delete-before $BaseFolder $DestFolder >> $Logfile

echo "" >> $Logfile
echo "Saving end" >> $Logfile