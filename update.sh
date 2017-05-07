#!/bin/bash

SRC=bxslider-4/dist

echo "This script assumes a few things."
echo " 1 - you are on OS X (Linux should be fine but watch out)"
echo " 2 - that the bxslider-4 source is checked out in this directory"
echo "Hit enter to contine - ctrl-C to quit"

read

echo "Copying images"
cp $SRC/images/bx_loader.gif vendor/assets/images
cp $SRC/images/controls.png vendor/assets/images

echo "Copying javascripts"
cp $SRC/jquery.bxslider.js vendor/assets/javascripts
cp $SRC/vendor/jquery.easing.1.3.js vendor/assets/javascripts
cp $SRC/vendor/jquery.fitvids.js vendor/assets/javascripts

echo "Copying stylesheets"
cp $SRC/jquery.bxslider.css vendor/assets/stylesheets/bxslider.scss
echo "Updating stylesheets"
sed -i '' -e "s/url('images\//url('/g" vendor/assets/stylesheets/bxslider.scss

echo "Done."
