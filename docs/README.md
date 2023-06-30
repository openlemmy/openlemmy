# OpenLemmy

[OpenLemmy](https://github.com/openlemmy/openlemmy) is an implementation of the upstream [LemmyNet](https://github.com/LemmyNet/) project.

The purpose of this project is to create an easy to use containerized distribution of [Lemmy](https://github.com/LemmyNet/lemmy). Easy deployment and customization for any Lemmy instance is our goal. Developer documentation and onboarding will be the starting focus of this project.

## 📐 OpenLemmy Architecture

Architecture overview for OpenLemmy.

```mermaid
%% TODO: Create architecture diagram
```

## 🚀 Quick Start

Requirements

1. [Docker Desktop](https://www.docker.com/products/docker-desktop/) (Podman Desktop/Rancher Desktop in testing)
2. [Terraform](https://www.terraform.io/downloads.html)
3. [NodeJS](https://nodejs.org/en/download)

## 🐳 Docker

This will create an OpenLemmy instance on your local computer or server for development purposes.

#### Start OpenLemmy

```bash
# Start OpenLemmy
docker compose up -d
```

Visit [http://localhost:80](http://localhost:80) on you computer. NGINX is listening on `port 80` by default.

> **Username**: `admin` > **Password**: `secret`

#### Stop and kill

```bash
docker compose stop # Stop OpenLemmy
docker compose down # Remove containers
```

## 🌱 Terraform

Digital Ocean is the first to be worked. Azure will come second and AWS third.

```bash
# Setup Terraform for dev environment
cd terraform/do # Other services coming soon
cp .example.tfvars .auto.tfvars
terraform init
terraform plan
terraform apply # BE CAREFUL! This will modify infrastructure.
```

### 🧨 Decommission

🚩 BE CAREFUL! This will destroy all associated infrastructure.

```bash
terraform destroy -var-file=YOUR_VARS.tfvars
```

### ⚙️ Workspaces

| Env   | Command                              |
| ----- | ------------------------------------ |
| Dev   | `terraform workspace select default` |
| Test  | `terraform workspace select test`    |
| Stage | `terraform workspace select stage`   |
| Prod  | `terraform workspace select prod`    |

Learn more [in the worspaces docs](./docs/terraform/WORKSPACES.md).

### 🌎 Remote State

Learn more [in the state docs](./docs/terraform/STATE.md).

### 💡 Tips

-   You can name your vars file `terraform.tfvars` or give it the extension `.example.auto.tfvars` and terraform will automatically use this file.

## 🙋 Help

Until we get our own instance going, please use the following resources to get in touch.

-   https://openlemmy.com
-   https://github.com/openlemmy/openlemmy
-   https://lemmy.world/c/openlemmy
