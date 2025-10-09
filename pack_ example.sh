#!/bin/bash
# by looha
# 打包脚本示例

#配置执行环境
source /etc/profile


# 打包(宿主机执行)
# docker需上传项目代码到docker容器，并在项目代码根目录下执行
# ci 产物跟路径： /root/workspace/

ohpm install --all
hvigorw clean --no-daemon


# debug hap 产物路径：<project_path>/entry/build/default/outputs/default/
hvigorw assembleHap --mode module -p product=default -p buildMode=debug --no-daemon
cd entry/build/default/outputs/default/
ls

# release hap 产物路径：<project_path>/entry/build/default/outputs/default/
# hvigorw assembleHap --mode module -p product=default -p buildMode=release --no-daemon

# release app 产物路径：<project_path>/build/outputs/release
# hvigorw assembleApp --mode project -p product=release -p buildMode=release --no-daemon
