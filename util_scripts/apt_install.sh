sudo apt-get update

INSTALL_PKGS="tmux python3-tk openssh-server"
for i in $INSTALL_PKGS; do
  sudo apt-get install -y $i
done


wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.11.4269.tar.gz
tar -zxvf jetbrains-toolbox-1.11.4269.tar.gz

touch jetbrainsLoginInfo.txt
printf "Hammania689\ns8e5tknH0rVo" >> jetbrainsLoginInfo.txt

sudo snap install spotify 
