########################################################################################
############################ ACUS UBUNTU 18.04.4 LTS SET UP ############################
########################################################################################

!!! Run all shell files on Home !!!

##########################
## CMAKE 3.17.3 INSTALL ##
##########################

1. source ubuntu486_openssl.sh

2. source ubuntu486_cmake.sh

3. CHECK : cmake --version

##########################
## OPENCV 3.4.0 INSTALL ##
##########################

1. source ubuntu486_opencv3.4.sh

2. CHECK : pkg-config --modversion opencv

#######################
## CUDA 10.2 INSTALL ##
#######################

1. source ./ubuntu486_cuda10.2.sh

2. sudo reboot

3. CHECK : nvcc --version

#########################
## ROS_MELODIC INSTALL ##
#########################

1. cd /usr/local/ssl/certs

2. sudo cp /etc/ssl/certs/* ./

3. source ubuntu486_rosmelodic.sh

4. source devel/setup.bash

5. CHECK : rosversion -d

#################
## QGC INSTALL ##
#################

1. https://docs.qgroundcontrol.com/master/en/getting_started/download_and_install.html

#################
## PX4 INSTALL ##
#################

1. source ubuntu486_px4.sh

2. CHECK : cd launch

3. CHECK : roslaunch mavros_posix_sitl.launch

4. rostopic list

###################
## BASH ADDITION ##
###################

1. gedit ~/.bashrc

2. edit below

export PX4_HOME_LAT=36.592122
export PX4_HOME_LON=126.294465
export PX4_HOME_ALT=20.0

export PATH=/usr/local/cuda-10.2/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-10.2/lib64:$LD_LIBRARY_PATH

export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:~/Firmware:~/Firmware/Tools/sitl_gazebo

source ~/Firmware/Tools/setup_gazebo.bash ~/Firmware ~/Firmware/build/px4_sitl_default

####################################
## Jetson <==> Pixhawk connection ##
####################################

1. cd /Home/catkin_ws/src/mavros/mavros/launch

2. gedit px4.launch

3. edit below

"/dev/ttyACM0:57600" -> "/dev/ttyTHS0:57600"

4. When you turn on Jetson in the Terminal

sudo chmod 777 /dev/ttyTHS0 
