# Things to Add
- [X] Abstract things away with a python script that accepts arguements
- [X] Add download and installations of cuda
- [X] Add i3 and gaps config file (macros, audio settings, background, etc)
  - [X] Install latest release of [playerctl](https://github.com/acrisci/playerctl) 
  - [ ] Notes to self for pactl settings, add links to resources as well
    - [ ] System changes need to be made to /etc/pulse/default.pa 
    - [ ] Grep commands to check current sink/volume [here][pactl_help]
    - [ ] Specificaly line 122* - automatacly suspend idle
    - [ ] Set default sink as variable in config file. SINK NUMBERS WILL CHANGE 
- [ ] Add list with inline links of packages in this config
- [X] Flameshot installation. Needs to be built from src. Follow debian install instructions [here](https://github.com/lupoDharkael/flameshot#install)
- [X] Ibus Notes to self. Startup scripts,resources,etc
[pactl_help]:  https://unix.stackexchange.com/questions/132230/read-out-pulseaudio-volume-from-commandline-i-want-pactl-get-sink-volume
