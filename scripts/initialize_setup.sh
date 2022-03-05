#!/bin/env bash

set -e

yum install -y yum-utils device-mapper-persistent-data lvm2 &&
    yum-config-manager \
        --add-repo \
        https://download.docker.com/linux/centos/docker-ce.repo &&
    yum install -y docker-ce docker-ce-cli containerd.io &&
    systemctl start docker &&
    yum -y install epel-release &&
    yum -y install python-pip &&
    pip install --upgrade pip &&
    pip install docker-compose
