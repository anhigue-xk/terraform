# TERRAFORM

In case we need more context, enter in the following link [Terraform](https://www.terraform.io/cli/commands/apply)

## Commands

1. [Init](#init-project)
2. [Current State](#show-current-state)
3. [Apply](#apply-changes)
4. [Destroy](#destroy-infraestructure)
5. [Validate](#validate-code)

## Init Project
Download all dependencies the project needs. In this case, the connection file contains all the providers we use. 

```bash
terraform init 
```

## Show current state
This shows the diff between infrastructure that's in place on whatever platforms and what state we want it to be 
in based on our configuration

```bash
terraform plan
```

## Apply changes
this command executes the actions proposed in a Terraform plan.

```bash
terraform apply
```

## Destroy infraestructure
This command rollback all the changes that we made with our own configuration or terraform is responsible for.

```bash
terraform destroy
```

## Validate code

```bash
terraform validate
```

