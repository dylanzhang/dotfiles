#!/bin/bash

# This script is copied from https://gist.github.com/rogerleite/99819
# This script is used for install monaco ttf into my Linux

cd /usr/share/fonts/truetype/

#TODO: put validation if folder already exists
sudo mkdir ttf-monaco
 
cd ttf-monaco/
 
# This font is already downloaded into my Dropbox
sudo wget http://www.gringod.com/wp-upload/software/Fonts/Monaco_Linux.ttf
 
#create an index of X font files in a directory
sudo mkfontdir
 
#go to parent folder /usr/share/fonts/truetype
cd ..
 
fc-cache
