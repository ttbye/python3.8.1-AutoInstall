#########################################################################
# File APP: install.sh
# Author: ttbye
#########################################################################
#!/usr/bin/env bash
#1. gcc相关组件
yum install make gcc gcc-c++ &&
#2. zlib的解压缩类库
yum -y install zlib* &&
#支持python退格的组件
yum install readline-devel &&
yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel &&
wget https://www.python.org/ftp/python/3.8.1/Python-3.8.1.tgz &&
mkdir -p /usr/local/python3 &&
tar -xvf Python-3.8.1.tgz &&
cd Python-3.8.1 &&
./configure --prefix=/usr/local/python3 &&
make &&
make install &&
ln -s /usr/local/python3/bin/python3.8 /usr/local/bin/python3 &&
ln -s /usr/local/python3/bin/pip3.8 /usr/local/bin/pip3 &&
pip3 install --upgrade pip &&
echo "installed successfullly!"
