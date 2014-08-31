#!/bin/bash
. variables.sh
echo "Loading previous theme ..."
gconftool-2 --load $BACKUP_THEME_PATH
