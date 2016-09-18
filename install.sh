#! /bin/bash

## this is a shell script used to configing vim.

# scane the ~ check wether the .vim exit
 if [ -d ~/.vim ];then
        mv ~/.vim ~/.vim.bak
        echo ".vim has been backuped to ~/.vim.bak"
        cp -r ./vim ~/.vim
    else
        cp -r ./vim ~/.vim
fi

# scane the ~ check wether the .vimrc exit
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
    echo ".vimrc has been backuped to ~/.vimrc.bak"
    cp -r ./.vimrc ~/
    source ~/.vimrc
else
    cp -r ./.vimrc ~/
fi
echo "install completed"
