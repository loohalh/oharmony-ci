# 鸿蒙持续集成 docker 镜像
基于：centos 9 Stream, 版本跟随Command Line Tools 更新

[docker hub 镜像地址](https://hub.docker.com/r/looha/oharmony-ci)

[国内镜像](https://cr.console.aliyun.com/repository/cn-shanghai/docker-hub-pub/oharmony-ci/details)

## 版本：
#### latest(v5.1.0.849)
#### v6.0.0.858
#### v5.1.1.840
#### v5.1.0.849
#### v5.0.5.200

## 使用
### 一、宿主机使用（本地）
    1、安装docker后拉取镜像
    ```
    # docker hub  镜像
    docker pull looha/oharmony-ci

    # 国内镜像
    docker pull crpi-ei15w5bunnash8ph.cn-shanghai.personal.cr.aliyuncs.com/docker-hub-pub/oharmony-ci
    ```
    2、上传代码到docker容器
    ```
     docker cp <source_path> <container_id_or_name>:<destination_path>
    ```
    3、进入容器，执行打包
    ```
    #1.配置执行环境
    source /etc/profile

    #2.cd项目根目录，进行打包
    ohpm install --all
    hvigorw clean --no-daemon
    #hvigorw assembleApp --mode project -p product=release -p buildMode=release --no-daemon
    hvigorw assembleHap --mode module -p product=default -p buildMode=debug --no-daemon
    ```
成功后产物路径：<project_path>/entry/build/default/outputs/default/

### 二、ci流水线使用
打包环境选择docker,填写对应拉取信息，以coding为例子：
<img width="907" alt="image" src="https://github.com/user-attachments/assets/88801e41-7458-4f9c-8d96-0b8f74cee0d2">

配置打包脚本

```
source /etc/profile

ohpm install --all

hvigorw clean --no-daemon
#hvigorw assembleApp --mode project -p product=release -p buildMode=release --no-daemon
hvigorw assembleHap --mode module -p product=default -p buildMode=debug --no-daemon
```
成功后产物路径：/root/workspace/entry/build/default/outputs/default下





## 更新日志：


### 2025.09.29 
release latest(v5.1.0.849)

### 2025.09.29 
release v6.0.0.858

### 2025.09.28 
release v5.1.1.840

### 2025.09.27 
release v5.1.0.849

### 2024.12.09 
release v5.0.5.200


 
