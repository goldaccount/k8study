#!/bin/bash

# kubectl edit configmap -n kube-system kube-proxy

kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.13.11/config/manifests/metallb-native.yaml
