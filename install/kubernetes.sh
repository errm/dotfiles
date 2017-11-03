#!/bin/bash
set -e

brew install \
  kubernetes-cli \
  kubernetes-helm \
  docker-machine-driver-xhyve \

sudo chown root:wheel /usr/local/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
sudo chmod u+s /usr/local/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve

brew cask install \
  minikube \

minikube start --vm-driver=xhyve
