set -e
sudo apt-get install xfwm4
sudo cp -r Sweet-Theme /usr/share/plymouth/themes/sweet-theme
sudo cp -r Sweet-Dark /usr/share/themes/Sweet-Dark
sudo cp -r Sweet-Wallpapers /usr/share/wallpapers/Sweet-Wallpapers
sudo cp -r Sweet-Rainbow /usr/share/icons/Sweet-Rainbow
sudo plymouth-set-default-theme -R sweet-theme
xfconf-query -c xfwm4 -p /general/theme -s Sweet-Dark
pcmanfm -w /usr/share/wallpapers/Sweet-Wallpapers/sweet-space.png
sed -i 's#^\(sNet/ThemeName\s*=\s*\).*$#\1Sweet-Dark#' ~/.config/lxsession/LXDE-pi/desktop.conf
sed -i 's#^\(sNet/IconThemeName\s*=\s*\).*$#\1Sweet-Rainbow#' ~/.config/lxsession/LXDE-pi/desktop.conf
sed -i 's#^\(sGtk/CursorThemeName\s*=\s*\).*$#\1Sweet-Rainbow#' ~/.config/lxsession/LXDE-pi/desktop.conf
sed -i 's#^\(window_manager\s*=\s*\).*$#\1xfwm4#' ~/.config/lxsession/LXDE-pi/desktop.conf
echo "Successfully installed Sweet Theme."
