#!/bin/bash


LATEST_TAG=$(git describe --tags `git rev-list --tags --max-count=1`)

if [ -z "$LATEST_TAG" ]; then
  echo "No tags found in the repository!"
  exit 1
fi

echo "Latest release tag: $LATEST_TAG"


git checkout $LATEST_TAG


docker-compose down
docker-compose up --build -d


APP_IP=$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' python_web_app_app_1)
NGINX_IP=$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' python_web_app_nginx_1)

echo "App running at: http://$APP_IP:5000"
echo "Reverse proxy running at: http://$NGINX_IP"

