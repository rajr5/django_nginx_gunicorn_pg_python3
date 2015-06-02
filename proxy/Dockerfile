FROM nginx

# the sites-enabled mechanism seems not present in the Dockerimage
COPY site.conf /etc/nginx/conf.d/site.conf
RUN  mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.backup
RUN nginx -t
