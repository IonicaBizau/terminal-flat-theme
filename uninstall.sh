#!/bin/bash
. variables.sh

echo "Loading previous theme ..."

if [ ! -f $BACKUP_THEME_PATH ]
then
    echo "File $BACKUP_THEME_PATH does NOT exists. Cannot restore previous theme."
    exit 1;
fi

gconftool-2 --load $BACKUP_THEME_PATH

echo "Removing $BACKUP_THEME_PATH"
rm $BACKUP_THEME_PATH
