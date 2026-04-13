#!/bin/bash

# Dependencies
apt-get update
apt-get install -y git software-properties-common libeigen3-dev python3-pip cmake

# Install qpOASES
mkdir -p ~/utils
cd ~/utils
git clone https://github.com/coin-or/qpOASES.git
cd ~/utils/qpOASES
sed -i -e 's/option(BUILD_SHARED_LIBS "If ON, build shared library instead of static" OFF)/option(BUILD_SHARED_LIBS "If ON, build shared library instead of static" ON)/g' CMakeLists.txt
mkdir -p build
cd ~/utils/qpOASES/build
cmake ..
make
make install

# Install DQ Robotics (development branch)
## C++
add-apt-repository ppa:dqrobotics-dev/development
apt-get update
apt-get install -y libdqrobotics libdqrobotics-interface-qpoases libdqrobotics-interface-json11
## Python
python3 -m pip install dqrobotics --pre --break-system-packages

# To prevent compilation errors with Pybind11
ln -s /usr/include/eigen3/Eigen /usr/include/Eigen
ldconfig

# Clean apt
apt-get autoremove -y
apt-get clean
rm -rf /var/lib/apt/lists/*