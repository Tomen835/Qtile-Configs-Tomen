###----Script to setup Full Qtile Desktop from Fedora Server----###
cd

#setting up graphical login
sudo dnf install gdm
sudo systemctl enable gdm
sudo systemctl set-default graphical.target


#installing packages
sudo dnf install dbus-devel gcc libconfig-devel libdrm-devel libev-devel libX11-devel libX11-xcb libXext-devel libxcb-devel mesa-libGL-devel meson pcre-devel pixman-devel uthash-devel xcb-util-image-devel xcb-util-renderutil-devel xorg-x11-proto-devel python3-cffi xserver-xorg python3-xcffib ninja nano python3-dbus-next pip asciidoc
sudo dnf install python3-cairocffi
sudo dnf install libpangocairo-1.0.so.0

#qtile install
pip install --no-cache-dir cairocffi
git clone https://github.com/qtile/qtile.git
cd qtile
pip install .

pip install qtile
cd

#picom install
git clone https://github.com/yshui/picom
cd picom
git submodule update --init --recursive
meson --buildtype=release . build
ninja -C build
ninja -C build install


cd Qtile-Configs-Tomen
mv backups/ ~

mv dotconfig/* ~/.config

mv qtile.desktop /usr/share/xsessions

sudo dnf install thunar alacritty rofi firefox

sh ~/backups/backup.sh
