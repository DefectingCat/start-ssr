# start-ssr
ShadowsocksR一键安装脚本

#主文件夹
主文件夹中拥有：
start.sh   --->主脚本
switch.sh   --->额外启动停止服务脚本（默认主脚本已启动服务）
ReadMe.md   --->本说明文档
other   --->如下

#other文件夹
other文件夹中存放的是独立分开的脚本部分。
对于后续的修改可能会有作用。
其中：
git.sh	 -->检查git安装以及git to ShadowsocksR
setup.sh   --->创建用于运行的config.json
python.sh   --->检查python安装以及运行ShadowsocksR服务端

#声明
此脚本只适用于Ubuntu/Debian
本脚本安装的ShadowsocksR为Python版，且本脚本会绿色运行
在您的服务器上，不会执行安装操作。</br>
ShadowsocksR为原作者Fork而来。</br>
个人不承担运行服务后的结果。</br>
</br>
#若无法正常运行</br>
请尝试给予脚本可执行权限</br>
或者尝试通过sh 运行脚本</br>
请使用管理员权限运行</br>
