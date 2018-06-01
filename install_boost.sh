mkdir ~/boost_download
cd ~/boost_download

wget https://dl.bintray.com/boostorg/release/1.67.0/source/boost_1_67_0.tar.gz
tar -xzf boost_1_67_0.tar.gz

cd boost_1_67_0 
sudo ./bootstrap.sh
sudo ./b2

sudo ./b2 install

