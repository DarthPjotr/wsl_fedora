#!/bin/bash
# C:\Users\pkvan\.minikube
set -x

KUBE_HOME=${HOME}/.kube
WIN_HOME=/mnt/c/Users/pkvan
MINIKUBE=${WIN_HOME}/.minikube

mkdir -p ${KUBE_HOME}/minikube
cp ${WIN_HOME}/.kube/config ${KUBE_HOME}/minikube.config
# C:\Users\pkvan\.minikube\profiles\minikube\
sed -i 's@C:\\Users\\pkvan\\.minikube\\profiles\\minikube\\@'${KUBE_HOME}'/minikube/@g' ${KUBE_HOME}/minikube.config
# C:\Users\pkvan\.minikube\
sed -i 's@C:\\Users\\pkvan\\.minikube\\@'${KUBE_HOME}'/minikube/@g' ${KUBE_HOME}/minikube.config

cp ${MINIKUBE}/profiles/minikube/client.crt ${KUBE_HOME}/minikube/
cp ${MINIKUBE}/profiles/minikube/client.key ${KUBE_HOME}/minikube/
cp ${MINIKUBE}/ca.crt ${KUBE_HOME}/minikube/
