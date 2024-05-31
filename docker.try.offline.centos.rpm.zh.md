https://wsldl-pg.github.io/docs/Using-wsldl/#distros

https://www.centlinux.com/2019/02/install-docker-ce-on-offline-centos-7-machine.html

# Online Centos
## EPEL yum repository has been installed.

```
yum install -y epel-release.noarch
```

## Installing Docker Yum Repository on CentOS 7

### Install Docker CE yum repository on our CentOS 7 operating system.

yum-config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo

### Enable Docker CE (Nightly) yum repository.

yum-config-manager --enable docker-ce-nightly

### build Cache 

yum makecache fast

## Downloading Docker CE and Software Dependencies:

mkdir -p /mnt/e/wsl/CentOS7/docker

### Download Docker CE and dependent packages following Linux command.

yumdownloader --resolve docker-ce

### Tar Docker CE packages

tar cvzf docker-20.10.tar.gz *.rpm


# (offline)Installing Docker CE on Offline System

Upload the docker-20.10.tar.gz to offline system, Then unzip to docker

tar xvf docker-20.10.tar.gz -C ~/docker-20.10

### Install all packages in the ~/docker-20.10 directory.

cd ~/docker-20.10
rpm -ivh --replacefiles --replacepkgs *.rpm


### Start and enable Docker service.

systemctl enable docker.service
systemctl start docker.service

### Check version

docker version


# GraphXR image 
### Save the graphxr image

docker pull kineviz/graphxr_custom:latest
docker save kineviz/graphxr_custom:latest > graphxr_custom.tar

### Upload the offline system & load the graphxr image

docker load < graphxr_custom.tar

### Check the images

docker images

