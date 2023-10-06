#!/bin/bash

# https://github.com/prometheus-community/helm-charts/tree/main/charts

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

# https://github.com/prometheus-community/helm-charts/blob/main/charts/kube-prometheus-stack/values.yaml
helm show values prometheus-community/kube-prometheus-stack

# helm install [RELEASE_NAME] prometheus-community/kube-prometheus-stack
kubectl create ns monitoring

helm install --namespace monitoring --create-namespace k8s prometheus-community/kube-prometheus-stack




###### kube-prometheus #####
https://github.com/prometheus-operator/kube-prometheus.git

