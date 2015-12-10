To set up vim on a new computer:

git clone https://github.com/bxb/dotfiles.git ~/.vim
ln -s ~/.vim/.vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update
