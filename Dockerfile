FROM ubuntu:20.04

# add repositories
RUN apt update && \
    apt install -y software-properties-common && \
    add-apt-repository ppa:ondrej/php && \
    apt update

#install php
RUN apt-get install -y php8.0 php8.0-cli

# run version of PHP
CMD ["php", "-v"]
