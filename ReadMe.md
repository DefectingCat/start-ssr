
##### #说明</br>
--------------
脚本默认为使用-d参数启动服务。</br>
运行后该目录下会产生shadowsocksr文件夹以及shadowsocksr.zip</br>
配置文件参数请参考：https://github.com/DefectingCat/start-ssr/wiki/%E9%85%8D%E7%BD%AE%E5%8F%82%E6%95%B0</br>
</br>
##### #主文件夹</br>
主文件夹中拥有：</br>
start.sh   --->主脚本</br>
switch.sh   --->额外启动停止服务脚本（默认主脚本已启动服务）</br>
ReadMe.md   --->本说明文档</br>
other   --->如下</br>
</br>
##### #other文件夹</br>
other文件夹中存放的是独立分开的脚本部分。</br>
对于后续的修改可能会有作用。</br>
其中：</br>
git.sh   -->检查git安装以及git to ShadowsocksR</br>
setup.sh   --->创建用于运行的config.json</br>
python.sh   --->检查python安装以及运行ShadowsocksR服务端</br>
</br>
##### #声明</br>
此脚本只适用于Ubuntu/Debian</br>
本脚本安装的ShadowsocksR为Python版，且本脚本会绿色运行</br>
在您的服务器上，不会执行安装操作。</br>
ShadowsocksR为原作者Fork而来。</br>
个人不承担运行服务后的结果。</br>
</br>
##### #若无法正常运行</br>
请尝试给予脚本可执行权限</br>
或者尝试通过sh 运行脚本</br>
请使用管理员权限运行</br>
确保端口为防火墙放行</br>
请参考：https://github.com/DefectingCat/start-ssr/wiki/Ubuntu%E8%84%9A%E6%9C%AC%E9%97%AE%E9%A2%98
</br>
