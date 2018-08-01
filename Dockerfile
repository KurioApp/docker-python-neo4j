FROM python:3.6.6

RUN echo "deb http://httpredir.debian.org/debian jessie-backports main" | tee -a /etc/apt/sources.list.d/jessie-backports.list \
  && apt-get update \
  && apt-get -t jessie-backports install -y ca-certificates-java

RUN apt-get install -y apt-transport-https \
  && wget -O - https://debian.neo4j.org/neotechnology.gpg.key | apt-key add - \
  && echo 'deb https://debian.neo4j.org/repo stable/' | tee -a /etc/apt/sources.list.d/neo4j.list \
  && apt-get update \
  && apt-get -y install neo4j \
  && mkdir -p /var/run/neo4j

VOLUME 7474 7687
