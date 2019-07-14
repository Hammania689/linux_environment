

# PulseAudio Notes
Be sure to comment out the line on suspending idle sources in `/etc/pulse/default.pa`


Refer to [this post][script_ref], for the change sink script. 

Notes to self for pactl settings, add links to resources as well

System changes need to be made to /etc/pulse/default.pa 

Grep commands to check current sink/volume [here][pactl_help]

Specificaly line 122* - automatacly suspend idle

Set default sink as variable in config file

[pactl_help]:  https://unix.stackexchange.com/questions/132230read-out-pulseaudio-volume-from-commandline-i-want-pactl-get-sink-volume

[script_ref]: https://askubuntu.com/questions/71863/how-to-change-pulseaudio-sink-with-pacmd-set-default-sink-during-playback
