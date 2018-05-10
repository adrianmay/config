# This file has been auto-generated by i3-config-wizard(1).
# It will not be overwritten, so edit it as you like.
#
# Should you change your keyboard layout somewhen, delete
# this file and re-run i3-config-wizard(1).
#

# i3 config file (v4)
#
# Please see http://i3wm.org/docs/userguide.html for a complete reference!

# exec_always --no-startup-id xrandr --output HDMI1 --above eDP1

focus_follows_mouse no
exec --no-startup-id "setxkbmap -layout gb"
exec --no-startup-id "syndaemon -dRki1"
exec --no-startup-id feh --bg-scale /home/adrian.may/Bark.jpg
set $mod Mod4

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below. ISO 10646 = Unicode
font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1
# The font above is very space-efficient, that is, it looks good, sharp and
# clear in small sizes. However, if you need a lot of unicode glyphs or
# right-to-left text rendering, you should instead use pango for rendering and
# chose a FreeType font, such as:
# font pango:DejaVu Sans Mono 10

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
bindsym $mod+Return exec i3-sensible-terminal
bindsym $mod+s exec i3-sensible-terminal
bindsym $mod+b exec firefox
bindsym $mod+Shift+b exec chromium

# kill focused window
bindsym $mod+Shift+q kill

# start dmenu (a program launcher)
bindsym $mod+d exec dmenu_run
# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
# bindsym $mod+d exec --no-startup-id i3-dmenu-desktop

# screen lock
bindsym $mod+Shift+l exec i3lock -c 000010
bindsym $mod+Ctrl+Shift+s exec sudo /sbin/shutdown -h now
bindsym $mod+Shift+s exec sudo /usr/sbin/pm-suspend  
# change focus
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# move between monitors
bindsym $mod+Ctrl+Up move workspace to output up
bindsym $mod+Ctrl+Down move workspace to output down

# split in horizontal orientation
bindsym $mod+h split h
# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen

# change container layout (stacked, tabbed, toggle split)
# bindsym $mod+s layout stacking
# bindsym $mod+w layout tabbed
# bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
bindsym $mod+Shift+a focus child

# switch to workspace
bindsym $mod+1 workspace 1
bindsym $mod+2 workspace 2
bindsym $mod+3 workspace 3
bindsym $mod+4 workspace 4
bindsym $mod+5 workspace 5
bindsym $mod+6 workspace 6
bindsym $mod+7 workspace 7
bindsym $mod+8 workspace 8
bindsym $mod+9 workspace 9
bindsym $mod+0 workspace 10
bindsym $mod+Ctrl+1 workspace 11
bindsym $mod+Ctrl+2 workspace 12
bindsym $mod+Ctrl+3 workspace 13
bindsym $mod+Ctrl+4 workspace 14
bindsym $mod+Ctrl+5 workspace 15
bindsym $mod+Ctrl+6 workspace 16
bindsym $mod+Ctrl+7 workspace 17
bindsym $mod+Ctrl+8 workspace 18
bindsym $mod+Ctrl+9 workspace 19
bindsym $mod+Ctrl+0 workspace 20

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace 1
bindsym $mod+Shift+2 move container to workspace 2
bindsym $mod+Shift+3 move container to workspace 3
bindsym $mod+Shift+4 move container to workspace 4
bindsym $mod+Shift+5 move container to workspace 5
bindsym $mod+Shift+6 move container to workspace 6
bindsym $mod+Shift+7 move container to workspace 7
bindsym $mod+Shift+8 move container to workspace 8
bindsym $mod+Shift+9 move container to workspace 9
bindsym $mod+Shift+0 move container to workspace 10
bindsym $mod+Ctrl+Shift+1 move container to workspace 11
bindsym $mod+Ctrl+Shift+2 move container to workspace 12
bindsym $mod+Ctrl+Shift+3 move container to workspace 13
bindsym $mod+Ctrl+Shift+4 move container to workspace 14
bindsym $mod+Ctrl+Shift+5 move container to workspace 15
bindsym $mod+Ctrl+Shift+6 move container to workspace 16
bindsym $mod+Ctrl+Shift+7 move container to workspace 17
bindsym $mod+Ctrl+Shift+8 move container to workspace 18
bindsym $mod+Ctrl+Shift+9 move container to workspace 19
bindsym $mod+Ctrl+Shift+0 move container to workspace 20

# scrot & gimp - root
bindsym Print exec scrot -e 'mv $f /tmp/ && gimp /tmp/$f'
# # scrot & gimp - select window or rectangle
bindsym Mod1+Print exec scrot -s -e 'mv $f /tmp/ && gimp /tmp/$f'

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+r mode "resize"

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
        status_command i3status
}
