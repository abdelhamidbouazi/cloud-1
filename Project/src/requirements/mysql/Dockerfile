FROM debian:bullseye

RUN apt-get update &&  apt-get install -y mysql-server && apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 3306

CMD ["mysqld"]