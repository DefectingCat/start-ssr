#!/bin/bash
echo "Y-启动服务；N-停止服务"
read abc
case $abc in
 y)
	y=`python shadowsocksr/shadowsocks/server.py -c shadowsocksr/shadowsocks/config.json -d start`
	echo "$y"
	exit
	;;
 n)
	n=`python shadowsocksr/shadowsocks/server.py -c shadowsocksr/shadowsocks/config.json -d stop`
	echo "$n"
	exit
	;;
 *)
	exit
	;;
esac
