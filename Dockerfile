FROM ubuntu:latest

RUN apt-get update

RUN apt-get install -y make gcc autoconf

ADD . /app/

WORKDIR /app

RUN autoconf
RUN autoheader
RUN ./configure
RUN make

CMD /app/server
