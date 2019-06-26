FROM debian:buster

MAINTAINER Lachlan Toohey <l.toohey@acfr.usyd.edu.au>

ENV DEBIAN_FRONTEND noninteractive

# get the packages first
# this is the bare minimum to get the project to run
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    devscripts \
    dput \
    equivs \
    git \
    openssh-client \
    && rm -rf /var/lib/apt/lists/*

# for later usage add in contrib and non-free
RUN sed -i "s/buster main/buster main contrib non-free/" /etc/apt/sources.list

# these are needing when using the image, not right now
COPY acfrmarine-archive-keyring.gpg /etc/apt/trusted.gpg.d/
COPY acfr-marine-buster.list /etc/apt/sources.list.d/
