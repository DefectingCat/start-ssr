#!/bin/bash
echo "Y-启动服务；N-停止服务"
read abc
case $abc in
 y)
	y=`python shadowsocksr/shadowsocks/server.py -c shadowsocksr/shadowsocks/config.json -d start | grep "started"`
	if [[ "$y" =~ "started" ]] ;then
        	echo "启动成功"
	else
        	echo "启动失败"
	fi
#	echo "$y"
	exit
	;;
 n)
	n=`python shadowsocksr/shadowsocks/server.py -c shadowsocksr/shadowsocks/config.json -d stop | grep "stopped"`
#	echo "$n"
	if [[ "$n" =~ "stopped" ]] ;then
	        echo "关闭成功"
	else
        	echo "关闭失败"
	fi
	exit
	;;
 *)
	exit
	;;
esac
