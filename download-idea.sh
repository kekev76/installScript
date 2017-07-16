#!/bin/bash


IDEA_PACKAGE_URL=https://download.jetbrains.com/idea/ideaIU-2017.1.3.tar.gz
IDEA_INSTALL_DIR=$HOME/bin/idea
IDEA_TAR=$IDEA_INSTALL_DIR/android-sdk.tar.gz

mkdir -p $IDEA_INSTALL_DIR
rm -rf $IDEA_INSTALL_DIR/*


wget $IDEA_PACKAGE_URL -O $IDEA_TAR

tar -xvf $IDEA_TAR
