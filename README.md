# Backup to remote server from CLI

This little script save a particular folder to a remote server using Rsync

### Requirements 

This script require : 

- Debian, Ubuntu
- Rsync

### 1. Installation

First, clone this repo :

```sh
git clone https://github.com/fsalber/BackupFromCli.git
```

### 2. Usage

For use this script, you have first to give him the correct rights

```sh
chmod a+x backup.sh
```

Then, edit params at line 3, 4 and 5 :

```bash
Logfile="/srv/backups/logs/replication/backup$(date '+%Y%m%d%H').log"
BaseFolder="/home/"
DestFolder="root@localhost:/srv/backups/home/"
```

- LogFile : Path to saves log files
- BaseFolder : Folder to save
- DestFolder : Remote destination folder

Now, you can use it just using this command : 

```sh
./backup.sh
```

The script will create a log file at every start.

Feel free to adapt the script as you want.

### 3. Notice

You can add a crontab line for the script. 
In my example, the script will be called every day at 00:00

```sh
0 0 * * * ./backup.sh >/dev/null 2>&1
```

### 4. Support

If you have any problems with this script, feel free to open a issues. We will try to find out a solution ;)