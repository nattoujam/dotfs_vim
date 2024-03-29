#!/bin/sh
cd `dirname $0`
echo $0
unlink ~/.vimrc
unlink ~/.config/vim

path=`pwd`

echo "link $path/.vimrc to home directory"
ln -s $path/.vimrc ~/

echo "link $path/.config/vim to home directory"
mkdir -p ~/.config/
ln -s $path/.config/vim ~/.config/

mkdir -p ~/.config/vim/private

# install python tool
python3 -m pip install -r $path/requirements.txt

