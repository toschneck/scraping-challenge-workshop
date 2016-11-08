FROM consol/ubuntu-xfce-vnc:dev
MAINTAINER Tobias Schneck "tobias.schneck@consol.de"
ENV REFRESHED_AT 2016-11-08

USER root
RUN apt-get update \
    && apt-get install -y python-dev python-pip libssl-dev libxml2-dev libxslt1-dev libffi-dev \
    && rm -rf /var/lib/apt
RUN pip install scrapy scrapoxy
RUN umask 0000
WORKDIR /home/scraper