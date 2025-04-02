#!/bin/bash
 
sudo docker pull nginx:1.27.4-bookworm
sudo docker container run -d --name meu-servidor nginx:1.27.4-bookworm
sudo docker container ls
sudo docker rm -f meu-servidor
sudo docker container ls -a

