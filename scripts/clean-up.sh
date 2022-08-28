#!/usr/bin/bash

clean_up_tf() {
  terraform destroy -auto-approve
}

clean_up_minikube(){
  minikube delete
}

clean_up_tf
clean_up_minikube