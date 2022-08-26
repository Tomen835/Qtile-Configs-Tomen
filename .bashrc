# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

#starts keepassxc autotype in background
#keepassxc -platform xcb &
clear

#loads neofetch
#neofetch

#creates clear alias
alias clear2='sh ~/neofetch.sh'
alias mainframe='cmatrix -B -C blue'
#aliases for flatpaks
alias osu='flatpak run sh.ppy.osu &'
alias config='nano ~/.config/qtile/config.py'
alias freetube='flatpak run io.freetubeapp.FreeTube &'
alias libresprite='flatpak run com.github.libresprite.LibreSprite &'
alias obsidian='flatpak run md.obsidian.Obsidian &'
alias night='sh ~/night.sh'
#creates aliases to back up and restore configs
alias backup='sh ~/backups/backup.sh'
alias restore='sh ~/backups/restore.sh'
#creates startup alias
alias startup='sh ~/startup.sh'

picom -b
clear
