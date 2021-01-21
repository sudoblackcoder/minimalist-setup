#! /usr/bin/bash

cat<<title
--:: Minimalist Software Installer ::--
---------------------------------------
1.  git - Git Client
2.  lf - File Manager
3.  sxiv - Image Viewer
4.  neovim - Vim Editor
5.  mpd - Lightweight Music Demon
6.  mpc - Terminal Interface of mpd
7.  ncmpcpp - Ncurses Interface for Music With Powerfull Tag Editor
8.  newsboat - Terminal RSS Client
9.  sc-im - Excel Like Terminal SpreadSheet Manager
10. abook - Offline Addressbook usable by neomutt
11. unrar - Extracts RAR
12. unzip - Extracts ZIP
13. lynx - Terminal browser
14. mediainfo - Shows Audio And Video Information
15. atool - Manages and Gives Information About Archives
16. fzf - Fuzzy Finder Tool
17. highlight - Highlights Code Output
18. xclip - Allows for Copying and Pasting From Command Line
19. python - Python Programming Language (python2, python3)
20. go - Go Programming Language
---------------------------------------
** Only Works In: proot-distro ubuntu (other debian based not checked yet)

title

cat>>"=> ** proot-distro minimize everything. extracting to large system"
unminimize
cat>>"[ Done ]: extract to large system."
cat>>"=> [ Installing ]: MAN INFO"
apt install man info
cat>>"[ Done ]: man-db info"
cat>>"=> [ Installing ]: Python PIP GO"
apt install python2 python3 python3-pip golang-go && curl https://bootstrap.pypa.io/get-pip.py --output get-pip.py && python2 get-pip.py
cat>>"[ Done ]: python2 python3 pip2 pip3 go"
cat>>"[ Installing ]: Neovim unzip unrar"
apt install neovim unzip unrar
cat>>"[ Done ]: neovim unzip unrar"
cat>>"[ Installing ]: LF file manager"
env CGO_ENABLED=0 GO111MODULE=on go get -u ldflags="-s -w" github.com/gokcehan/lf
cat>>"[ Done ]: lf"
cat>>"=> [ Installing ]: SXIV NEWSBOAT ABOOK LYNX MEDIAINFO ATOOL FZF HIGHLIGHT XCLIP"
apt install sxiv newsboat abook lynx mediainfo atool fzf highlight xclip
cat>>"[ Done ]: sxiv newsboat abook lynx mediainfo atool fzf highlight xclip"
cat>>"=> [ Installing ]: SC-IM"
sudo apt install bison libncurses5-dev libncursesw5-dev libxml2-dev libzip-dev
git clone https://github.com/jmcnamara/libxlswriter.git && cd libxlswriter && make && make install
ldconfig
cd ~ && git clone https://github.com/andmarti1424/sc-im.git && cd sc-im/src && make && make install & cd ~
rm -rf libxlswriter sc-im
cat>>"[ Done ]: sc-im"
