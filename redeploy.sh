#! /bin/bash

echo "redeploy.sh executed"

docker stop auto-flask
docker rm auto-flask
docker pull jfbeyond/auto-flask:latest
docker run -d --name auto-flask -p 5000:5000 jfbeyond/auto-flask:latest
