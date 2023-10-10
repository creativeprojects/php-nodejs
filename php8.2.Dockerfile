FROM creativeprojects/php-ci:8.2

LABEL maintainer="Fred <Fred@CreativeProjects.Tech>" \
      version="8.2"

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y gnupg curl apt-transport-https lsb-release unzip \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && curl -sL https://deb.nodesource.com/setup_16.x | http_proxy='' bash - \
    && http_proxy='' apt-get install -y nodejs yarn \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

