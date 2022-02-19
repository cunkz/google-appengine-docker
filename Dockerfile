FROM telkomindonesia/alpine:nginx-1.12.2-novol
ARG ARGS_NGINX_CSR_PATH=/
WORKDIR /var/www/data/html

# Change Working User to "Root"
USER root

# Configure Nginx Default Configuration
RUN sed -i -e 's|try_files $uri $uri/ =404;|try_files $uri '"${ARGS_NGINX_CSR_PATH}"'index.html =404;|g' \
      /usr/local/docker/etc/nginx/conf.d/default.conf

# Change Working User to "User"
USER user

COPY . .${ARGS_NGINX_CSR_PATH}

