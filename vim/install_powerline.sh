# Powerline font install script: https://gist.github.com/petercossey/69ff13fe366beec4b1df7f42f5fb4faf

# Get the font and config files
cd ~
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir ~/.fonts #if directory doesn't exist
mv PowerlineSymbols.otf ~/.fonts/
mkdir -p .config/fontconfig/conf.d #if directory doesn't exists

# Clear fonts cache
fc-cache -vf ~/.fonts/

# Move config file
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
