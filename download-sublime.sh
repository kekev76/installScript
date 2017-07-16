#!/bin/bash
#download-sublime

SUBLIME_DIR=$HOME/bin/sublime-text
SUBLIME_DEB=$SUBLIME_DIR/sublime-text.deb

echo "Create directory "$SUBLIME_DIR
mkdir -p $HOME/bin/sublime-text

if [ -f $SUBLIME_DEB ]; then
    echo "Remove install file"
    rm -rfv $SUBLIEM_DEB
fi

wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb -O $SUBLIME_DEB --progress=bar:force

sudo dpkg -i $SUBLIME_DEB
