#!/bin/bash
#安装配置部分
echo "请填写配置文件信息："
touch shadowsocksr/shadowsocks/config.json
echo '{\n"server": "0.0.0.0",' > shadowsocksr/shadowsocks/config.json
echo -n "server_port:"
read port
echo '"server_port":' $port, >>  shadowsocksr/shadowsocks/config.json
echo -n "password:"
read passwd
echo '"password": ' '"'$passwd'"', >>  shadowsocksr/shadowsocks/config.json
echo '"timeout": 120,' >>  shadowsocksr/shadowsocks/config.json
echo -n "method:"
read met
echo '"method": ''"'$met'"', >>  shadowsocksr/shadowsocks/config.json
echo -n "protocol:"
read pro
echo '"protocol": ''"'$pro'"', >>  shadowsocksr/shadowsocks/config.json
echo -n "protocol_param:"
read pra
echo '"protocol_param": ''"'$pra'"', >>  shadowsocksr/shadowsocks/config.json
echo -n "obfs:"
read ob
echo '"obfs": ''"'$ob'"', >>  shadowsocksr/shadowsocks/config.json
echo -n "obfs_param:"
read obp
echo '"obfs_param": ''"'$obp'"', >>  shadowsocksr/shadowsocks/config.json
echo '"dns_ipv6": false,' >>  shadowsocksr/shadowsocks/config.json
echo '"redirect": ""' >>  shadowsocksr/shadowsocks/config.json
echo '}' >>  shadowsocksr/shadowsocks/config.json

#config.json写入完成。调用python.sh启动ssr客户端
#sh python.sh

