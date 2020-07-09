# Install powerline font
./install_powerline.sh

# Install vim with +clipboard support: http://vimcasts.org/blog/2013/11/getting-vim-with-clipboard-support/
sudo apt install vim vim-gnome

# Install vundle plugin manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Copy vim config from the cwd to the ~
cp ./.vimrc ~/.vimrc

# Restart shell
exec $SHELL
