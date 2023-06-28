# Workspaces

Using [Terraform workspaces](https://www.terraform.io/docs/state/workspaces.html) to define environments.

| Env   | Command                              |
| ----- | ------------------------------------ |
| Dev   | `terraform workspace select default` |
| Test  | `terraform workspace select test`    |
| Stage | `terraform workspace select stage`   |
| Prod  | `terraform workspace select prod`    |

Each Terraform configuration has an associated backend that defines how Terraform executes operations and where Terraform stores persistent data, like state.

The persistent data stored in the backend belongs to a workspace. The backend initially has only one workspace containing one Terraform state associated with that configuration. Some backends support multiple named workspaces, allowing multiple states to be associated with a single configuration. The configuration still has only one backend, but you can deploy multiple distinct instances of that configuration without configuring a new backend or changing authentication credentials.
