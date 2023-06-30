# GraphXR Trial installation
--- 
>  Recommended use **Chrome/Edge**. 
>  Please email kineviz(info@kineviz.com) for any question. 
>  Default password is kineviz

### 0. Install docker and docker-compose
please refer to [docker installation](https://docs.docker.com/engine/install/) and [docker-compose installation](https://docs.docker.com/compose/install/)

### 1. Download docker-compose.yml

```
wget https://raw.githubusercontent.com/Kineviz/graphxr_trial/master/docker-compose.yaml
```

### 2. Run docker-compose

```
docker-compose up -d
```

### 3. Open graphXR

Use latest Chrome/Edge open http://localhost:9000

> Please contact kineviz(info@kineviz.com) for ask a trial license key.

#### GraphXR info:

Username: admin@graphxr.com
Password: kineviz
URL : http://localhost:9000

> You can change the password and admin email in docker-compose.yml

#### Neo4j info:

> Please uncomment the neo4j service in docker-compose.yml

Username: neo4j
Password: kineviz
Bolt Port: 7687
Host: neo4j  (Connect with GraphXR use neo4j or IP)
Browser URL: http://localhost:7474

> You can change the password in docker-compose.yml

### 4. Stop docker-compose

```
docker-compose  down
```

### 5. update docker-compose

```
docker-compose pull && docker-compose up -d
```