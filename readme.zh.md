# GraphXR 试用版

[English](./readme.md) · 中文


## 注意事项

- 推荐使用的浏览器：Chrome / Edge。
- 需要帮助？请发送电子邮件至 info@tugraphxr.com, 或者微信搜索“图客Graph”公众号。
- 默认用户：admin@graphxr.com
- 默认密码：graphxr.com

## 快速入门

### 1. 安装 Docker 和 Docker Compose
- [Docker](https://docs.docker.com/engine/install/) 
- [Docker Compose](https://docs.docker.com/compose/install/)

### 2. 下载 docker-compose.yml 文件

```
curl -0 https://raw.githubusercontent.com/Kineviz/graphxr_trial/master/docker-compose.yaml > docker-compose.yml
```

### 3. 运行 docker-compose

可选：更改环境变量

- ADMIN_EMAIL（GraphXR 管理员邮箱）
- ADMIN_PASSWORD（GraphXR 密码）

可选：如果需要尝试 Neo4j，请取消注释 Neo4j 部分

- NEO4J_AUTH（Neo4j 认证）

```
docker-compose up -d
```

### 4. 打开 GraphXR

http://localhost:9000

- 管理员用户名: admin@graphxr.com
- 管理员密码: graphxr.com

> 请联系 info@tugraphxr.com 或者“图客Graph”微信公众号 获取许可密钥。

#### 可选: Neo4j

> 如果您想尝试 Neo4j，请取消注释 docker-compose.yml 中的 neo4j 服务

用户名: neo4j  
密 码: graphxr.com
Bolt端口: 7687  
Neo4j地址: neo4j (使用“服务器模式”连接 GraphXR 时，请使用 `neo4j`)  
Browser地址: http://localhost:7474   

### 5. 清理

```
docker-compose down
```

### 6. 更新 

```
docker-compose pull && docker-compose up -d
```
