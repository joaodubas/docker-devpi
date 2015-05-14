# devpi - local pypi server
#
# VERSION: see `TAG`
FROM python:3.4.3-slim
MAINTAINER Joao Paulo Dubas "joao.dubas@gmail.com"

RUN pip install -U devpi-server
ENTRYPOINT ["devpi-server"]
CMD ["--help"]
