GraphXR 离线包安装（Ubuntu 版本）
--

### 1. 查看系统版本和架构

#### 1.1 可执行如下命令查看系统版本
```
lsb_release -a
```
#### 1.2 查看系统架构  
```
uname -m
```

#### 1.3 系统长期版本应版本名称对应参考

Ubuntu Jammy 22.04 (LTS)  
Ubuntu Focal 20.04 (LTS)  
Ubuntu Bionic 18.04 (LTS)  

### 2. 下载对应系统版本和架构的docker相关文件

> 步骤可参考官网 <https://docs.docker.com/engine/install/ubuntu/#install-from-a-package>

#### 2.1 阿里云镜像 <https://mirrors.aliyun.com/docker-ce/linux/ubuntu/dists/> 或者docker官网 <https://download.docker.com/linux/ubuntu/dists/>
#### 2.2 选中对应的系统的目录  
#### 2.3 到 pool/stable/ 目录，并选择对应系统架构图的目录(amd64, armhf, arm64, 或者 s390x).  
#### 2.4 下载相关文件列表如下 （<version> 为系统版本，<arch>为系统架构）

```
containerd.io_<version>_<arch>.deb
docker-ce_<version>_<arch>.deb
docker-ce-cli_<version>_<arch>.deb
docker-buildx-plugin_<version>_<arch>.deb
docker-compose-plugin_<version>_<arch>.deb
```

#### 2.5 安装 （<version> 为系统版本，<arch>为系统架构）

```
sudo dpkg -i ./containerd.io_<version>_<arch>.deb \
  ./docker-ce_<version>_<arch>.deb \
  ./docker-ce-cli_<version>_<arch>.deb \
  ./docker-buildx-plugin_<version>_<arch>.deb \
  ./docker-compose-plugin_<version>_<arch>.deb
```

#### 2.6 启动并验证

```
sudo service docker start

```

#### 2.7 卸载（如果企业不允许使用docker，则需要卸载，请替换为podman，具体请联系图客）

#### 2.7.1 卸载所有docker相关软件
```
sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras
```
#### 2.7.2 删除所有docker的容器、镜像、挂载盘

```
sudo rm -rf /var/lib/docker \
&& \
sudo rm -rf /var/lib/containerd
```

### 3 GraphXR 下载安装
#### 3.1 下载GraphXR离线镜像 

<https://img.graphxr.cn/graphxr/graphxr_trial.tar.gz>

#### 3.2 导入GraphXR离线镜像

```
docker load < graphxr_trial.tar.gz
```

### 4 启动GraphXR

参考 [GraphXR 试用版本](readme.zh.md) 中的相关内容
