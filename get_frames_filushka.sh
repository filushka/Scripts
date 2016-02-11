#!/bin/sh

git clone https://github.com/filushka/Cura_frame
cd Cura_frame
git checkout master

cd ../
git clone https://github.com/filushka/Uranium_frame
cd Uranium_frame
git checkout master

cd ../
git clone https://github.com/filushka/Scripts
cd Scripts
git checkout master
