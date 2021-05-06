#xrandr --output VGA1 --mode 1440x900 --rate 59.9 --output LVDS1 --mode 1366x768 --rate 60.0 --primary --below VGA1
#xrandr --output LVDS1 --mode 1366x768 --rate 60.0 --output VGA1 --mode 1440x900 --rate 59.9 --primary --below LVDS1
#xrandr --output LVDS1 --mode 1366x768 --rate 60.0 --output HDMI1 --mode 1360x768 --rate 59.9 --primary --below LVDS1
#xrandr --output LVDS1 --mode 1366x768 --rate 60.0 --output HDMI1 --mode 1920x1080i --rate 59.9 --primary --right-of LVDS1
#xrandr --output LVDS1 --mode 1366x768 --rate 60.0 --primary --output HDMI1 --mode 1920x1080i --rate 59.9 --right-of LVDS1
#xrandr --output LVDS1 --mode 1366x768 --rate 60.0 --primary --output VGA1 --mode 1024x768 --rate 74.6 --right-of LVDS1
#xrandr --output LVDS1 --mode 1366x768 --rate 60.0 --primary --output VGA1 --mode 1280x1024 --rate 75.0 --right-of LVDS1
## See also ~/.config/autostart/lxrandr-autostart.desktop
#xrandr --output HDMI-1 --mode 1920x1080 --rate 60.0 --output DVI-I-2 --mode 1920x1080 --rate 60.00 --below DVI-I-1 --output DVI-I-1 --mode 1280x1024 --rate 60.02
#xrandr --output HDMI-1 --mode 1920x1080 --rate 60.0 --output DP-1 --mode 1920x1080 --rate 60.00 --below DVI-I-1 --output DVI-I-1 --mode 1280x1024 --rate 60.02
xrandr --output HDMI-1 --mode 1920x1080 --rate 60.0 --output DP-1 --mode 1920x1080 --rate 60.0 --right-of HDMI-1 --output DVI-I-1 --mode 1280x1024 --rate 60.02 --right-of DP-1
