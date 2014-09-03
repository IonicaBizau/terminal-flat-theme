#!/bin/bash
echo "Backupping the current theme ..."
. variables.sh
echo $BACKUP_THEME_PATH
if [ -f $BACKUP_THEME_PATH ]
then
    echo "File $BACKUP_THEME_PATH exists. Please delete it before installing this package."
    exit 1;
fi
gconftool-2 --dump '/apps/gnome-terminal' > $BACKUP_THEME_PATH
echo "Importing the new theme ..."
gconftool-2 --load terminal-flat-theme.xml
echo "Done. Have fun! :-)"
