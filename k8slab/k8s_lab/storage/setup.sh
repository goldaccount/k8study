#!/bin/bash

# https://rook.io/docs/rook/latest/Helm-Charts/operator-chart/#introduction

## Operator ##
helm repo add rook-release https://charts.rook.io/release
helm install --create-namespace --namespace rook-ceph rook-ceph rook-release/rook-ceph -f values.yaml

# https://github.com/rook/rook/blob/master/deploy/charts/rook-ceph/values.yaml

## https://rook.io/docs/rook/v1.12/Getting-Started/quickstart/#deploy-the-rook-operator

$ git clone --single-branch --branch v1.12.4 https://github.com/rook/rook.git
cd rook/deploy/examples
kubectl create -f crds.yaml -f common.yaml -f operator.yaml
kubectl create -f cluster.yaml

kubectl create -f deploy/examples/toolbox.yaml

kubectl create -f deploy/examples/csi/rbd/pool.yaml

kubectl create -f deploy/examples/csi/rbd/filesystem.yaml

kubectl create -f deploy/examples/csi/rbd/storageclass.yaml

kubectl create -f deploy/examples/csi/nfs/storageclass.yaml

kubectl patch storageclass rook-ceph-block -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'

