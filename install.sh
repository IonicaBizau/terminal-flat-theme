#!/bin/bash
echo "Backupping the current theme ..."
gconftool-2 --dump '/apps/gnome-terminal' > ~/.terminal-theme.bkp.xml
echo "Importing the new theme ..."
gconftool-2 --load terminal-flat-theme.xml
echo "Done. Have fun! :-)"
