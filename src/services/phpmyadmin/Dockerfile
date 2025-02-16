FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y php && \
    apt-get install -y phpmyadmin && \
    apt-get clean

COPY setup.sh /

RUN chmod +x /setup.sh

EXPOSE 3306

CMD [ "/setup.sh" ]