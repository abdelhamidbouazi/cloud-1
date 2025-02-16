FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get update -y && apt-get install -y software-properties-common \
    && add-apt-repository ppa:ondrej/php -y \
    && apt-get update -y \
    && apt-get install -y php7.3-fpm php7.3-mysql
RUN apt-get install curl -y

COPY ./setup.sh /

RUN chmod +x ./setup.sh

EXPOSE 9000

CMD ["/setup.sh"]