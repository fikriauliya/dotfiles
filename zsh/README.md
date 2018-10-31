sudo apt-get install zsh
sudo chsh -s $(which zsh) levi
# Logout and login
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cp .my-zsh.sh ~
cp z.sh ~
