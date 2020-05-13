FROM --platform=amd64 ubuntu:16.04

RUN set -x \
  && apt-get update \
  && apt-get install -y wget \
  && wget -O /etc/apt/sources.list.d/materiapps-xenial.list https://sourceforge.net/projects/materiappslive/files/Debian/sources/materiapps-xenial.list \
  && apt-get -o Acquire::AllowInsecureRepositories=true update \
  && apt-get -y --allow-unauthenticated -o Acquire::AllowInsecureRepositories=true install materiapps-keyring \
  && apt-get update \
  && apt-get -y install cdbs devscripts quilt reprepro \
  && apt-get -y install xauth \
  && apt-get -y install git cmake vim
