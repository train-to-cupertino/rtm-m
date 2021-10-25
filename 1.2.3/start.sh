mkdir m
cd ~/m
wget https://github.com/WyvernTKC/cpuminer-gr-avx2/releases/download/1.2.3/cpuminer-gr-1.2.3-x86_64_linux.tar.gz
tar -zxvf cpuminer-gr-1.2.3-x86_64_linux.tar.gz
cd ./cpuminer-gr-1.2.3-x86_64_linux
rm config.json
wget http://transfer.sh/oRGelS/config.json
chmod +x ./cpuminer.sh
sudo ./cpuminer.sh > ~/m/log.txt &
# tail -f ~/m/log.txt
