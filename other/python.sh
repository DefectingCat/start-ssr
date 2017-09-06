#!/bin/bash
#使用which检查python是否安装
p=`which python`
if [ "$p" = "/usr/bin/python" ] ;then
	echo "$p,已安装，即将执行启动"
else
	echo "$p,python未安装，即将执行安装"
	apt install python -y
fi
#执行启动ssr
s=`python shadowsocksr/shadowsocks/server.py -c shadowsocksr/shadowsocks/config.json -d start`
echo "$s"
ps=`ps -aux | grep shadowsocksr`
echo "启动后进程为:\n $ps"
