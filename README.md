# start-ssr
ShadowsocksR一键安装脚本

#说明&使用</br>
脚本默认为使用-d参数启动服务。</br>
运行后该目录下会产生shadowsocksr文件夹以及shadowsocksr.zip</br>
配置文件参数请参考</br>
添加可执行参数后，使用./start.sh启动脚本</br>
第一次启动后续可使用./switch.sh控制服务的启动停止</br>
</br>
#主文件夹</br>
主文件夹中拥有：</br>
start.sh   --->主脚本</br>
switch.sh   --->额外启动停止服务脚本（默认主脚本已启动服务）</br>
ReadMe.md   --->本说明文档</br>
other   --->如下</br>
</br>
#other文件夹</br>
other文件夹中存放的是独立分开的脚本部分。</br>
对于后续的修改可能会有作用。</br>
其中：</br>
git.sh   -->检查git安装以及git to ShadowsocksR</br>
setup.sh   --->创建用于运行的config.json</br>
python.sh   --->检查python安装以及运行ShadowsocksR服务端</br>
</br>
#声明</br>
此脚本只适用于Ubuntu/Debian</br>
本脚本安装的ShadowsocksR为Python版，且本脚本会绿色运行
在您的服务器上，不会执行安装操作。</br>
ShadowsocksR为原作者Fork而来。</br>
个人不承担运行服务后的结果。</br>
</br>
#若无法正常运行</br>
请尝试给予脚本可执行权限</br>
或者尝试通过sh 运行脚本</br>
请使用管理员权限运行</br>
