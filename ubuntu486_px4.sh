sudo apt install git
git clone https://github.com/PX4/Firmware.git

sudo apt-get install python3-empy
sudo apt-get install python3-pip -y
sudo apt-get install python3-jinja2

pip3 install --user pyros-genmsg
pip3 install --user toml
pip3 install --user numpy
pip3 install --user packaging

##pip error configuration

pip3 install --user empy numpy keras packaging
sudo apt-get install libgstreamer-plugins-base1.0-dev

##make

cd Firmware
DONT_RUN=1 make px4_sitl_default gazebo

source ~/catkin_ws/devel/setup.bash
source Tools/setup_gazebo.bash $(pwd) $(pwd)/build/px4_sitl_default
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)/Tools/sitl_gazebo
