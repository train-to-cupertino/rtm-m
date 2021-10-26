# wget https://raw.githubusercontent.com/train-to-cupertino/rtm-m/main/1.2.3/start.sh && chmod +x ./start.sh && sudo ./start.sh

mkdir m
cd ~/m
wget https://github.com/WyvernTKC/cpuminer-gr-avx2/releases/download/1.2.3/cpuminer-gr-1.2.3-x86_64_linux.tar.gz
tar -zxvf cpuminer-gr-1.2.3-x86_64_linux.tar.gz
cd ./cpuminer-gr-1.2.3-x86_64_linux
#rm config.json
#wget http://transfer.sh/oRGelS/config.json
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 16 | head -n 1)
sed -i "s/RQKcAZBtsSacMUiGNnbk3h3KJAN94tstvt.WorkerName/RYKp42YigotaFCD8DKEtYafvJ1jpSS8CFr.Worker$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)/" ./config.json
chmod +x ./cpuminer.sh
sudo ./cpuminer.sh > ~/m/log.txt &
# tail -f ~/m/log.txt
