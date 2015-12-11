D=`pwd`
sudo apt-get install libncurses5-dev libx11-dev libxtst-dev libxt-dev libsm-dev libxpm-dev
sudo apt-get remove vim-tiny vim-common vim-gui-common
cd ~/Downloads
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=normal --enable-multibyte --enable-gui=auto --enable-cscope --with-x --prefix=/usr && sudo make install || die
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
sudo update-alternatives --set editor /usr/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
sudo update-alternatives --set vi /usr/bin/vim
cd $D



