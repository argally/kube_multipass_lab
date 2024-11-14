module "multipass_kube_lab" {
  source = "git@github.com:argally/terraform-kubernetes-multipass.git"
}


module "kube_addons" {
  source = "git@github.com:argally/terrraform-modules-kube.git//kube-argocd-bootstrap"

  enable_kube_addons          = true
  argocd_admin_password       = var.argocd_admin_password
  argocd_api_user_password    = var.argocd_api_user_password
  argocd_github_repo_username = var.argocd_github_repo_username
  argocd_github_repo_password = var.argocd_github_repo_password

}