#!/bin/sh

git clone https://github.com/Ultimaker/Cura
cd Cura
git checkout master

cd ../
git clone https://github.com/Ultimaker/Uranium
cd Uranium
git checkout master

cd ../
git clone https://github.com/Ultimaker/CuraEngine
cd CuraEngine
git checkout master

cd ../
git clone https://github.com/Ultimaker/cura-build
cd cura-build
git checkout master

#mkdir build
#cd build
#cmake
#cmake ../


#make package
