################################################################################
#
# ████████╗███████╗██████╗ ██████╗  █████╗ ███████╗ ██████╗ ██████╗ ███╗   ███╗
# ╚══██╔══╝██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔═══██╗██╔══██╗████╗ ████║
#    ██║   █████╗  ██████╔╝██████╔╝███████║█████╗  ██║   ██║██████╔╝██╔████╔██║
#    ██║   ██╔══╝  ██╔══██╗██╔══██╗██╔══██║██╔══╝  ██║   ██║██╔══██╗██║╚██╔╝██║
#    ██║   ███████╗██║  ██║██║  ██║██║  ██║██║     ╚██████╔╝██║  ██║██║ ╚═╝ ██║
#    ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝      ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝
#
#                                  Terraform Deployment for DigitalOcean
#
################################################################################

# Helpful Links
# - https://www.terraform.io/cli/commands
# - https://www.terraform.io/language/state/workspaces
# - https://www.terraform.io/language/settings/backends/azurerm
# - https://docs.microsoft.com/en-us/azure/developer/terraform/store-state-in-azure-storage
# - https://help.cherwell.com/bundle/csm_administration_10_5_help_only/page/content/system_administration/server_tools/cherwell_service_host_architecture_models.html

################################################################################
# Configure the required provider(s)
################################################################################
terraform {
  required_version = ">= 0.13"
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.30.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

################################################################################
# Special DO config features needed for deploy management
################################################################################
provider "digitalocean" {
  # Configuration options
  token = var.do_token
}
