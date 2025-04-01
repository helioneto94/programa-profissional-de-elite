#!/bin/bash
 
sudo docker pull nginx
sudo docker container run -d --name meu-servidor nginx
sudo docker container ls
sudo docker rm -f meu-servidor
sudo docker container ls -a

