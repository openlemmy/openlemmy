# Security

> You must never report security related issues, vulnerabilities or bugs including sensitive information to the issue tracker, or elsewhere in public. Instead sensitive bugs must be sent by email to [security@openlemmy.com](mailto:security@openlemmy.com).

## Dependency Updates

[Dependabot Docs](https://docs.github.com/en/code-security/dependabot/dependabot-version-updates/configuration-options-for-the-dependabot.yml-file)

Please see the `.github/dependabot.yml` for configuration.

It's set to check daily if there is an upstream update and creates a pull request with the latest version.

#### Updating Terraform

1.  Go to the [Pull Requests](/pulls) of this repo.
2.  Merge open dependabot pull requests into the `dev` branch.
3.  Switch to your local dev computer.
4.  Fetch upstream git updates. Make sure you are on the `dev` branch.
5.  Open a terminal into the `terraform` directory and run the following command.

```bash
terraform init -upgrade
terraform plan
```

6. Test to ensure terraform is able to function properly.
7. Merge the `dev` branch into `main`

## Secrets Management

## Patching
