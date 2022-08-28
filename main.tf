provider "kubernetes" {
  config_path = "~/.kube/config"
  config_context_cluster = "minikube"
}

resource "kubernetes_namespace" "argocd" {
  metadata {
    name = "argocd"
  }
}

# provider "helm" {
#   kubernetes {
#     config_path = "~/.kube/config"
#     config_context_cluster = "minikube"
#   }
# }

# resource "helm_release" "local" {
#   name = "buildachart"
#   chart = "./buildachart"
# }