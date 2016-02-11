#!/bin/sh

chmod + x get_branches_ultimaker.sh
chmod +x get_frames_filushka.sh

./get_frames_filushka.sh
./get_branches_ultimaker.sh

# Copy Uranium_frame contents into Uranium
cd Cura_frame
rm -rf .git
cp -R . ../Cura

# Copy Cura_frame contents into Cura
cd ../Uranium_frame
rm -rf .git
cp -R . ../Uranium
cd ..


#Remove Cura_frame and Uranium_frame
rm -rf Cura_frame
rm -rf Uranium_frame

#Restore git folders
./get_frames_filushka.sh

#Rename original CMakeLists.txt file in Cura
pwd
cd Cura 
pwd
mv CMakeLists.txt CMakeLists_orig.txt
mv CMakeLists_my.txt CMakeLists.txt
cd ..

#Rename original CMakeLists.txt file in Uranium
pwd
cd Uranium
pwd
mv CMakeLists.txt CMakeLists_orig.txt
mv CMakeLists_my.txt CMakeLists.txt
cd ..

