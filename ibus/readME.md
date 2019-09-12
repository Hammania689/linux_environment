# Ibus Installation in i3


1. Install ibus and Korean packages: `sudo apt install ibus ibus-hangul ttf-baekmuk`. [Here](https://www.reddit.com/r/i3wm/comments/5i3hsl/i_cant_type_in_korean_without_logging_into_gnome/) is a related Reddit post.
**For 18.04 `tff-baekmuk` is unaviable use `sudo apt-get install fonts-baekmuk` instead. More info [here][post]**

2. Install the "gi" module: 
	`sudo apt install python3-gi`
	`sudo apt install python-gi`
	`sudo apt-get install pkg-config libcairo2-dev gcc python3-dev libgirepository1.0-dev`
[Here](https://askubuntu.com/questions/80448/what-would-cause-the-gi-module-to-be-missing-from-python) is a related forum post.

3. Add the **ibus_startup.sh** to startup script ([info](https://linuxconfig.org/how-to-automatically-execute-shell-script-at-startup-boot-on-systemd-linux))

[post]:https://ubuntu.pkgs.org/18.04/ubuntu-universe-i386/fonts-baekmuk_2.2-12_all.deb.html
