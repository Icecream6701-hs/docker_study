sudo apt install build-essential -y
sudo pat install wget
wget https://www.openssl.org/source/openssl-1.1.1d.tar.gz
tar zxf openssl-1.1.1d.tar.gz
cd openssl-1.1.1d
./config
make
make test
sudo make install
