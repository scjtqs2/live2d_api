#!/bin/zsh

docker buildx create --use --name mydevbuilder
docker buildx build --tag scjtqs/php:live2d_api-fpm  --platform linux/amd64,linux/arm64,linux/armhf -f fpm.Dockerfile --push .
docker buildx build --tag scjtqs/nginx:live2d_api  --platform linux/amd64,linux/arm64,linux/armhf -f nginx.Dockerfile --push .
docker buildx rm mydevbuilder