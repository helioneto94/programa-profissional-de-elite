#!/bin/bash
 
sudo docker volume create nginx_logs
sudo docker container run -d -p 8080:80 --name meu-container -v nginx_logs:/var/log/nginx nginx
echo "Pausa de 5 segundos para finalização do container"
sleep 5
curl http://localhost:8080
sudo docker rm -f meu-container
sudo docker container run -d -p 8080:80 --name meu-container -v nginx_logs:/var/log/nginx nginx
sudo docker exec -it meu-container cat /var/log/nginx/access.log
