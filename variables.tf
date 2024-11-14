variable "argocd_github_repo_username" {
  description = "Github username to configure repository credential template"
  type        = string
}

variable "argocd_github_repo_password" {
  description = "Github password to configure repository credential template"
  type        = string
}

variable "argocd_admin_password" {
  description = "Password for ArgoCD admin user"
  type        = string
}

variable "argocd_api_user_password" {
  description = "Password for ArgoCD api user"
  type        = string
}

variable "enable_kube_addons" {
  description = "Globally enable all Kubernetes add-ons"
  type        = bool
  default     = false
}