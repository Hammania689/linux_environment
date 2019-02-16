# Docker
echo "Installing docker-ce"
sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get -y install docker-ce

# Autocomplete & Non sudo 
sudo curl -L https://raw.githubusercontent.com/docker/compose/1.22.0/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose
sudo groupadd docker
sudo usermod -aG docker $USER
#######################################################################
# Pyenv
echo "Installing Pyenv"
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bashrc
exec "$SHELL"

# Pyenv-virtualenv
echo "Installing Pyenv-virtualenv"
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
printf '\n' >> ~/.bashrc
printf '# Pyenv Virtualenv AutoCompletion'  >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
exec "$SHELL"

########################################################################
# VS Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y code # or code-insiders

# Set Code as default text editor
sudo update-alternatives --set editor /usr/bin/code
########################################################################

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
