# docker-images
 
## Purpose 

This repo contains my daily used docker images.

## Structure

Each tree folder inherits from the parent docker image folder.

Container image names accords to folder name.


https://cloud.docker.com/u/benit/repository/list

## Build

### Docker Hub

[Built images can be downloaded from docker hub.](https://cloud.docker.com/u/benit/repository/list)

### Clone

    git clone https://github.com/benIT/docker-images
    
    cd docker-images 

### Building benit/openldap 
       
    docker build -t benit/openldap openldap/ --build-arg http_proxy --build-arg https_proxy

### Building benit/stretch 
       
    docker build -t benit/stretch stretch/ --build-arg http_proxy --build-arg https_proxy
    
### PHP images

#### Building benit/stretch-php        
    
    docker build -t benit/stretch-php stretch/php --build-arg http_proxy --build-arg https_proxy

#### Building benit/stretch-php-5.6        
    
    docker build -t benit/stretch-php-5.6 stretch/php/5.6 --build-arg http_proxy --build-arg https_proxy
    
#### Building benit/stretch-php-7.0        
    
    docker build -t benit/stretch-php-7.0 stretch/php/7.0 --build-arg http_proxy --build-arg https_proxy

#### Building benit/stretch-php-7.1  

    docker build -t benit/stretch-php-7.1 stretch/php/7.1 --build-arg http_proxy --build-arg https_proxy

### Node images

#### Building benit/stretch-nodejs-4.9.1
  
    docker build -t benit/stretch-nodejs-4.9.1 stretch/nodejs/4.9.1 --build-arg http_proxy --build-arg https_proxy
    
#### Building benit/stretch-nodejs-12.5.0
  
    docker build -t benit/stretch-nodejs-12.5.0 stretch/nodejs/12.5.0 --build-arg http_proxy --build-arg https_proxy
    
## Run

     docker run -p 8000:80 -e http_proxy -e https_proxy -e no_proxy --name stretch --rm -d  benit/stretch
     
     docker run -p 8001:80 -e http_proxy -e https_proxy -e no_proxy --name stretch-php --rm -d  benit/stretch-php
     
     docker run -p 8002:80 -e http_proxy -e https_proxy -e no_proxy --name stretch-php-7.0 --rm -d  benit/stretch-php-7.0
     
     docker run -p 8003:80 -e http_proxy -e https_proxy -e no_proxy --name stretch-php-7.1 --rm -d  benit/stretch-php-7.1

## Attach a shell to a container

    docker exec -ti stretch-php-7.0 bash
    
## PUbliSH at dockerhub

    docker push benit/stretch-php-5.6
         
    docker push benit/stretch-php-7.0  
       
    docker push benit/stretch-php-7.1
    
    ...
    
## Build all images

[see this script](build-all-images.sh):

    ./build-all-images.sh

    