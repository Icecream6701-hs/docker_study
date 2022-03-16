sudo apt purge cmake
sudo apt update -y
sudo apt install wget build-essential -y
wget http://github.com/Kitware/CMake/releases/download/v3.17.3/cmake-3.17.3.tar.gz --no-check-certificate
tar zxf cmake-3.17.3.tar.gz
cd cmake-3.17.3
./bootstrap --prefix=/usr && make -j8 && sudo make install


