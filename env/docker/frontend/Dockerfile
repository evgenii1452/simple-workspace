FROM ubuntu:20.04

RUN apt-get update && DEBIAN_FRONTEND="noninteractive" TZ="Europe/Moscow" apt-get install -y \
    build-essential \
    systemd \
    cron \
    libpq-dev \
    libxml2-dev \
    libpng-dev \
    libfreetype6-dev \
    libzip-dev \
    libonig-dev \
    graphviz \
    zip \
    jpegoptim optipng pngquant gifsicle \
    vim \
    unzip \
    sudo \
    git \
    curl \
    whois

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install nodejs
RUN curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh; bash nodesource_setup.sh; apt install -y nodejs
RUN npm install --location=global npm@8.12.1
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - ;\
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list; \
    apt update; \
    apt install yarn;
#    npm install --location=global @vue/cli; npm i -g @vue/cli-init

# устанавливаем простой HTTP-сервер для статики
RUN npm install --location=global http-server

# Add user for laravel application
RUN groupadd -g 1000 www
RUN useradd -u 1000 -p "$(mkpasswd --method=sha-512 'www')" -ms /bin/bash -g www www
RUN usermod -a -G sudo www

#USER www

WORKDIR /var/www/front


EXPOSE 8081
CMD [ "http-server", "/var/www/front/dist", "--port=8081" ]


