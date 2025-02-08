FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y php && \
    apt-get install -y phpmyadmin && \
    apt-get clean

COPY setup.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/setup.sh

EXPOSE 3306

CMD [ "./usr/local/bin/setup.sh" ]