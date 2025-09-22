FROM creativeprojects/php-ci:8.4

LABEL maintainer="Fred <Fred@CreativeProjects.Tech>" \
      version="8.4"

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y gnupg curl apt-transport-https lsb-release unzip \
    && curl -fsSL https://deb.nodesource.com/setup_22.x | http_proxy='' bash - \
    && http_proxy='' apt-get install -y nodejs \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*
