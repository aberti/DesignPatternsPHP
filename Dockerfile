FROM php:7.2.0-cli

# test

WORKDIR /opt/php
RUN apt-get update \
    && apt-get install -y zlib1g-dev wget git-core \
    && docker-php-ext-install zip
ADD . /opt/php
CMD [ "./docker/test_runner.sh" ]
