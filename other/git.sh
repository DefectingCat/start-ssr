#!/bin/bash
#使用which检查git是否存在系统
g=`which git`
if [ "$g" = "/usr/bin/git" ] ;then
	echo "$g,git 已安装，即将继续下一步"
else
	echo "$g,git未安装，即将执行安装"
	apt install git -y
fi
#git to ShdowsocksR(Python版)
#timeou设置超时时间，超过一分钟即更换下载方式。
timeout 60 git clone https://github.com/DefectingCat/shadowsocksr
wget http://101.236.25.59/app/shadowsocksr.zip
#下载完成后，调用setup.sh,执行配置
#sh setup.sh
