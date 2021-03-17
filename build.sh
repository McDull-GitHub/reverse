wget https://github.com/txthinking/mr2/releases/download/v20200102/mr2_linux_amd64
wget https://github.com/XTLS/Xray-core/releases/download/v1.4.0/Xray-linux-64.zip && unzip Xray*
ls -al
uname -a
chmod 777 mr2_linux_amd64
chmod 777 xray
curl ip.sb
./mr2_linux_amd64 client -s 42.193.185.108:11111 -p password -P 12345 -c 127.0.0.1:9909 &
timeout 600 ./xray run -c config.json
