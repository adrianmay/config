#!/bin/bash
cd
[ -d build ] || mkdir build
cd build
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=normal  --enable-multibyte --enable-gui=auto --enable-cscope --prefix=/usr && make && sudo make install && cd .. && rm -rf vim || die
