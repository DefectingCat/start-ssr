#!/bin/bash
#纯shell script一键安装ShadowsockR Python
echo "欢迎使用。请确保过程中连接网络。"
#使用which检查git是否存在系统
g=`which git`
if [ "$g" = "/usr/bin/git" ] ;then
        echo "$g,已安装，即将继续下一步"
else
        echo "$g,git未安装，即将执行安装"
        apt install git -y
fi
#git to ShdowsocksR(Python版)
#timeou设置超时时间，超过一分钟即更换下载方式。
timeout 60 git clone https://github.com/DefectingCat/shadowsocksr
#下载完成后，开始安装配置
#安装配置部分
echo "请填写配置文件信息："
touch shadowsocksr/shadowsocks/config.json
echo "{" > shadowsocksr/shadowsocks/config.json
echo '"server": "0.0.0.0",' >> shadowsocksr/shadowsocks/config.json
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
#配置部分结束
#使用which检查python是否安装
p=`which python`
if [ "$p" = "/usr/bin/python" ] ;then
        echo "$p,已安装，即将执行启动"
else
        echo "$p,python未安装，即将执行安装"
        apt install python -y
fi
#执行启动ssr
s=`python shadowsocksr/shadowsocks/server.py -c shadowsocksr/shadowsocks/config.json -d start | wc -l`
#echo "$s"
if [[ "$s" = "2" ]] ;then
        echo "启动成功"
else
        echo "启动失败"
fi
ps=`ps -aux | grep shadowsocksr`
echo "启动后进程为:"
echo "$ps"
cat=`cat shadowsocksr/shadowsocks/config.json`
echo "客户端可按照如下配置填写:"
echo "$cat"
echo "Over"

