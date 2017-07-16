#!/bin/bash

# This script can be used offline
# To do so, you can provide 1 or 2 packages of android-studio.zip and android-sdk.tar and put them in the same folder as this script
# If the archives are not found, they will be downloaded
# android-studio.zip is the downloaded archive from google
# android-sdk.tar is an archive of ~/Android from a computer where sdk is already installed. It will simply be extracted to ~
STUDIO_DIR=$HOME/bin
STUDIO_INSTALL_DIR=$HOME/bin/android-studio
STUDIO_ZIP=$STUDIO_INSTALL_DIR/android-studio.zip
STUDIO_TAR=$STUDIO_INSTALL_DIR/android-sdk.tar
STUDIO_PACKAGE_URL=https://dl.google.com/dl/android/studio/ide-zips/2.3.1.0/android-studio-ide-162.3871768-linux.zip

sudo apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386

mkdir -p $STUDIO_INSTALL_DIR

# Download
if [ -f $STUDIO_ZIP ]; then
  rm -rfv $STUDIO_ZIP
fi

wget $STUDIO_PACKAGE_URL -O $STUDIO_ZIP

# Extract studio package
unzip $STUDIO_ZIP -d $STUDIO_DIR
rm -rfv $STUDIO_ZIP

if [ -f ~/.zshrc ]; then
  echo 'export ANDROID_HOME=$HOME/Android/Sdk' >> ~/.zshrc
  echo 'export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools' >> ~/.zshrc
fi

# Add android studio to path
touch ~/.bashrc

# Add sdk tools to path
echo 'export ANDROID_HOME=$HOME/Android/Sdk' >> ~/.bashrc
echo 'export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools' >> ~/.bashrc

sh $STUDIO_DIR/android-studio/bin/studio.sh