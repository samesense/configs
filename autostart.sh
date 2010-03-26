#!/bin/sh
# Auto-mounting drives
# gnome-volume-manager &
# GTK themes... this is just one method
# gnome-settings-daemon &
# feh stores the last background in .fehbg
exec eval `cat $HOME/.fehbg` &
tint &
stalonetray &
yakuake &
pidgin &
dropbox start
gnome-do &
firefox &
# this works b/c user_allow_other is enabled in /etc/fuse.conf
curlftpfs -o umask=0777,uid=1000,gid=1000,allow_other ftp://cfibusers:cf2006ib@bioinformatics.biomed.drexel.edu/TEMPORARY ~/home/perry/dt/ 
# # This prevents the panel from failing if it loads too fast
# if pgrep tint
# then exec openbox
# else exec tint && exec openbox
# fi
# stalonetray &
# # This prevents the panel from failing if it loads too fast
# if pgrep stalonetray
# then exec openbox
# else exec stalonetray && exec openbox
# fi
# dropbox start
# gnome-do &
# if pgrep gnome-do
# then exec gnome-do
# else exec gnome-do && exec openbox
# fi
# yakuake &
# if pgrep yakuake
# then exec yakuake
# else exec yakuake && exec openbox
# fi
# pidgin &
# if pgrep pidgin
# then exec pidgin
# else exec pidgin && exec openbox
# fi