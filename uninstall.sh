#!/bin/bash
. variables.sh

echo "Loading previous theme ..."
gconftool-2 --load $BACKUP_THEME_PATH

echo "Removing $BACKUP_THEME_PATH"
rm $BACKUP_THEME_PATH
