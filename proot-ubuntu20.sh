#! /usr/bin/bash

cat<<title
--:: Minimalist Software Installer ::--
---------------------------------------
1.  git - Git Client
2.  lf - File Manager
3.  sxiv - Image Viewer
4.  neovim - Vim Editor
5.  newsboat - Terminal RSS Client
6.  sc-im - Excel Like Terminal SpreadSheet Manager
7. abook - Offline Addressbook usable by neomutt
8. unrar - Extracts RAR
9. unzip - Extracts ZIP
10. lynx - Terminal browser
11. mediainfo - Shows Audio And Video Information
12. atool - Manages and Gives Information About Archives
13. fzf - Fuzzy Finder Tool
14. highlight - Highlights Code Output
15. xclip - Allows for Copying and Pasting From Command Line
16. python - Python Programming Language (python2, python3)
17. go - Go Programming Language
---------------------------------------
** Only Works In: proot-distro ubuntu (other debian based not checked yet)

title

unminimize

apt install man info

apt install python2 python3 python3-pip golang-go && curl https://bootstrap.pypa.io/get-pip.py --output get-pip.py && python2 get-pip.py

apt install neovim unzip unrar

env CGO_ENABLED=0 GO111MODULE=on go get -u ldflags="-s -w" github.com/gokcehan/lf

apt install sxiv newsboat abook lynx mediainfo atool fzf highlight xclip

sudo apt install bison libncurses5-dev libncursesw5-dev libxml2-dev libzip-dev
git clone https://github.com/jmcnamara/libxlswriter.git && cd libxlswriter && make && make install
ldconfig
cd ~ && git clone https://github.com/andmarti1424/sc-im.git && cd sc-im/src && make && make install & cd ~
rm -rf libxlswriter sc-im
