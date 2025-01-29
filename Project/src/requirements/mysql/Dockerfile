FROM debian:buster

RUN apt-get -y update

RUN apt-get install -y mysql-server

CMD ["mysqld", "--user=root", "--console"]