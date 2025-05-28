#!/bin/bash

BACKUP_SOURCE="/tmp"
BACKUP_DESTINATION="/backups"
BACKUP_DATE=$(date +%Y+%m+%d+%H+%M+%S)
BACKUP_FILENAME="backup_$BACKUP_DATE.tar.gz"
mkdir -p "$BACKUP_DESTINATION/$BACKUP_DATE"

tar -czf "$BACKUP_DESTINATION/$BACKUP_DATE/$BACKUP_FILENAME" -C "$BACKUP_SOURCE"

if [ $? -eq 0 ]
then
    echo "backup successful:$BACKUP_FILENAME"
else
    echo "backup failed"
fi


: '
"tar [options] [archive-file] [file or directory to be archived]

tar -cvf archive_name.tar /path/to/directory_or_file

Create (-c). Create a new archive.
Extract (-x). Extract files from an archive.
Verbose (-v). Show the detailed output of the process.
File (-f). Specify the archive file.
Compress with gzip (-z). The archive will be compressed using gzip, resulting in a .tar.gz file.
Compress with bzip2 (-j). Compress the archive using bzip2, resulting in a .tar.bz2 file.
Compress with xz (-J). Compress the archive using xz, resulting in a .tar.xz file."
 '
