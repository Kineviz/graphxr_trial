GraphXR 离线包安装（arm64版本）
--

### 1. 下载离线包
下载离线包到本地，解压后进入文件夹
```
wget https://graphxr.oss-cn-shanghai.aliyuncs.com/tuke/graphxr-offline-arm64.zip
unzip graphxr-offline-arm64.zip
cd graphxr-offline-arm64
```

### 2. 查看系统架构

> 如果不是aarch64架构，请联系图客获取对应的离线包

```
uname -m
```

### 3. 安装docker

```
sudo bash ./install_docker.sh

```

#### 3.1 卸载

```
sudo bash ./uninstall_docker.sh
```


### 4 启动GraphXR

```
sudo bash ./start.sh
```

#### 4.1 打开 GraphXR

http://localhost:9000 或者 http://你的服务器IP:9000

> 端口号可以在 docker-compose.yml（18行） 中修改PORT环境变量

- 管理员用户名: admin@graphxr.com
- 管理员密码: graphxr.com

> 请联系 info@tugraphxr.com 或者“图客Graph”微信公众号 获取许可密钥。

#### 可选: Neo4j

> 如果您不想使用 Neo4j，请注释 docker-compose.yml 中的 neo4j 服务

用户名: neo4j  
密 码: graphxr.com
Bolt端口: 7687  
Neo4j地址: neo4j (使用“服务器模式”连接 GraphXR 时，请使用 `neo4j`)  
Browser地址: http://localhost:7474 或者 http://你的服务器IP:7474


### 5 停止GraphXR

```
sudo bash ./stop.sh
```
