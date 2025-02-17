FROM ubuntu:latest

WORKDIR app

RUN apt-get update && apt-get install -y mysql-server

COPY ./script.sh .

RUN chmod +x script.sh

EXPOSE 3306



CMD ["./script.sh"]