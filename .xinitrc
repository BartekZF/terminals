# Display date and time in right top corner
$HOME/git/suckless/scripts/dwm-bar.sh &
# Set monitor resolution
xrandr --output "Virtual1" --mode 1920x1200 &
# Set wallpaper
feh --bg-fill $HOME/downloads/wallpapers/wallhaven-ex9gwo.png
# Enable picom at startup
picom &
# Loop
while true; do
        dwm > /dev/null 2>&1
done
# Start DWM
dwm
