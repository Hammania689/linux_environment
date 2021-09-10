#!/usr/bin/bash
mv tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


echo "You are all set with tmux. Run the following cmds to install plugins and reload the session:"
echo "{tmux prefix} + I"
echo "tmux source ~/.tmux.conf"
