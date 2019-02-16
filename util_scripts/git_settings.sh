git config --global user.email "hameedabdulrashid@gmail.com"
git config --global user.name "Hammania689"
git config --global push.default simple


sudo apt-get install xclip
ssh-keygen -t rsa -b 4096 -C "hameedabdulrashid@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub
echo "SSH key info copied to keyboard. Paste into github"

