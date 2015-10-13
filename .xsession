xmodmap .Xmodmap
xbindkeys
xcompmgr &
xscreensaver -no-splash &
thunar --daemon &
eval `gnome-keyring-daemon`
dropbox start &
owncloud &
eval $(gpg-agent --daemon)
xset r rate 350 50
exec awesome
