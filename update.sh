#!/bin/bash

# Build and push docker build images for each required Ubuntu and Debian release

# log into dockerhub ahead of this script

#exit
# bookworm in 2023 pending
# check what version each platform is on
# Sirius
# SCAM
# Nimbus
# Holt
for d in jessie stretch buster bullseye ; do
    DIST=$d docker build --build-arg DIST -f Dockerfile.debian  -t ltoohey/debdocker:$d .
    docker push ltoohey/debdocker:$d
done

# jammy pending in 2022
# trusty & xenial are probably needed to be retained for processing
# due to opencv requirements
for d in trusty xenial bionic focal ; do
    DIST=$d docker build --build-arg DIST -f Dockerfile.ubuntu  -t ltoohey/debdocker:$d .
    docker push ltoohey/debdocker:$d
done
