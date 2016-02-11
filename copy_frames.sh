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

#Restore git folders
./get_frames_filushka.sh
