xmodmap .Xmodmap
xbindkeys
xcompmgr &
gnome-screensaver &
thunar --daemon &
eval `gnome-keyring-daemon`
dropbox start &
owncloud &
eval $(gpg-agent --daemon)
xset r rate 350 50
xset s 3600
xset s noexpose
xset dpms 3600 3600 3600
exec awesome
