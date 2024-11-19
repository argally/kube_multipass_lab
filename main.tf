module "multipass_kube_lab" {
  source  = "git@github.com:argally/terraform-kubernetes-multipass.git"
  workers = 2
}


module "kube_addons" {
  source = "../terraform-modules-kube/"

  enable_kube_addons          = false
  argocd_admin_password       = var.argocd_admin_password
  argocd_api_user_password    = var.argocd_api_user_password
  argocd_github_repo_username = var.argocd_github_repo_username
  argocd_github_repo_password = var.argocd_github_repo_password

}
