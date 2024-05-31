GraphXR 离线包安装
--

### 1. 下载离线包 (aarch64/arm64)

#### 1.1 查看系统架构

> 如果是aarch64/arm64架构，请下载.aarch64.rpm 后缀的rpm包

```bash
uname -m
```

aarch64/arm64 架构的graphXR和MongoDB

```bash
wget https://graphxr.oss-cn-shanghai.aliyuncs.com/graphxr/graphxr-2.17.0.aarch64.rpm
wget https://graphxr.oss-cn-shanghai.aliyuncs.com/graphxr/mongodb-community-4.0.12.aarch64.rpm
```

x86_64 架构的graphXR和MongoDB

```bash
wget https://graphxr.oss-cn-shanghai.aliyuncs.com/graphxr/graphxr-2.17.0.x86_64.rpm
wget https://graphxr.oss-cn-shanghai.aliyuncs.com/graphxr/mongodb-community-4.0.12.x86_64.rpm
```

#### 1.2 请确认已经安装了lsof工具(可能需要下载)

>可以到阿里云镜像中去找的<https://developer.aliyun.com/mirror> 或者 [https://www.rpmfind.net](https://www.rpmfind.net/linux/rpm2html/search.php?query=lsof&submit=Search)


### 2. 安装 

```bash
sudo rpm -ivh --force mongodb-community-4.0.12.x86_64.rpm
sudo rpm -ivh --force graphxr-2.17.0.x86_64.rpm
```

#### 3 打开 GraphXR

#### 3.1 启动

> 一般安装成功就能正常启动

```
sudo systemctl start mongodb.service
sudo systemctl start graphxr.service
```

http://localhost:9000 或者 http://你的服务器IP:9000

- 管理员用户名: tuke@graphxr.cn
- 管理员密码: tuke

> 信息可以在 /usr/local/graphxr/config.json, 修改完成之后需要重新启动一下graphXR（运行命令**sudo systemctl restart graphxr.service**）

> 请联系 info@tugraphxr.com 或者“图客Graph”微信公众号 获取许可密钥。


### 4 停止GraphXR

```bash
sudo systemctl stop graphxr.service
sudo systemctl stop mongodb.service

```
