#!/usr/bin/bash

start_node() {
  minikube start
}

setup_infrastructure() {
  terraform init
  terraform apply -auto-approve
}

install_argocd() {
  kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
  kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'
}


start_node
setup_infrastructure
install_argocd