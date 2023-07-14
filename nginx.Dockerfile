FROM nginx:alpine
EXPOSE 80
COPY . /var/www/html/
COPY live2d.conf /etc/nginx/conf.d/default.conf