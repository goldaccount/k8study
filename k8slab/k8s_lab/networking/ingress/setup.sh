#!/bin/bash

# https://kubernetes.github.io/ingress-nginx/deploy/#bare-metal-clusters

# Change NodePort --> Loadbalancer
kubectl create -f deploy.yaml
