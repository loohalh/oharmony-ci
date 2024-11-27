#!/bin/bash
# by looha
# 打包脚本示例

#配置执行环境
source /etc/profile

#打包(宿主机执行docker需上传项目代码到docker容器，并在项目代码根目录下执行)
ohpm install --all
hvigorw clean --no-daemon
#hvigorw assembleApp --mode project -p product=release -p buildMode=release --no-daemon
hvigorw assembleHap --mode module -p product=default -p buildMode=debug --no-daemon
