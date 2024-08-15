# GraphXR Trial

English · [中文](./readme.zh.md)

## Notes

- Recommended browser: **Chrome / Edge**. 
- Need help? **info@kineviz.com**
- Default user: **admin@graphxr.com**
- Default password: **graphxr.com**

## QuickStart

### 1. Install docker and docker compose
- [Docker](https://docs.docker.com/engine/install/) 
- [Docker Compose](https://docs.docker.com/compose/install/)

### 2. Download docker-compose.yml

```
curl -0 https://raw.githubusercontent.com/Kineviz/graphxr_trial/master/docker-compose.yaml > docker-compose.yml
```

### 3. Run docker-compose

Optional: change environment variables

- ADMIN_EMAIL (GraphXR user)
- ADMIN_PASSWORD (GraphXR password)

Optional: uncomment Neo4j if you need a graph database to try

- NEO4J_AUTH (Neo4j auth)

```
docker-compose up -d
```

### 4. Open GraphXR

http://localhost:9000

- Default user: **admin@graphxr.com**
- Default password: **graphxr.com**

>Please contact info@kineviz.com if you want a long-term license key.

#### Optional: Neo4j

> Uncomment the neo4j service in docker-compose.yml if you want to try Neo4j too

Username: **neo4j**  
Password: **graphxr.com**
Bolt Port: **7687**  
Host: **neo4j** (Connect with GraphXR use `neo4j` in Through Server mode)  
Browser URL: **<http://localhost:7474>**   

### 5. Cleanup

```
docker-compose down
```

### 6. Update 

```
docker-compose pull && docker-compose up -d
```
