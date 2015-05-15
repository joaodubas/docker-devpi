# devpi - local pypi server
#
# VERSION: see `TAG`
FROM python:3.4.3-slim
MAINTAINER Joao Paulo Dubas "joao.dubas@gmail.com"

ENV DEVPI_SERVERDIR /devpi/server
ENV DEVPI_SERVERPORT 3141
ENV DEVPI_VERSION 2.2.0

RUN pip install -U devpi-server==${DEVPI_VERSION}
COPY ./run.sh /usr/local/bin/run

VOLUME ["/devpi/server"]
EXPOSE 3141
ENTRYPOINT ["/usr/local/bin/run"]
