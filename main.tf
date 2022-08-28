provider "kubernetes" {
  config_path = "~/.kube/config"
  config_context_cluster = "minikube"
}

resource "kubernetes_namespace" "minikube-namespace-1" {
  metadata {
    name = "my-first-terraform-namespace"
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
    config_context_cluster = "minikube"
  }
}

resource "helm_release" "local" {
  name = "buildachart"
  chart = "./buildachart"
}