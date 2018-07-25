# 01. Running Terraform: resources and state

* action takes place in a project dir.

* terraform automatically reads all files with .tf extension
  in that dir, not subdirs.

>
> You do not control the order the files are read. Terraform
> will determine dependencies between things you want provisioned.
> It will create these things based on that order.
>

The _things_ are called resources.

## RUNNING TERRAFORM

```bash
# The run-tf mantra. Create a bash alias for simplicity.
alias run_tf="
    rm -rf .terraform *.tfstate* 2>/dev/null ;
    terraform init \
    && terraform plan -input=false \
    && terraform apply -input=false -auto-approve
"
```

* init -> apply -input=false -auto-approve # for automation

* init -> (plan -input=false)repeat :-> apply -input=false -auto-approve # during development.

* init -> apply -input=false # for manual (type 'yes' after viewing plan to apply)

## VERSION

Useful as terraform is immature. New minor versions can introduce backwards-incompatible
changes. Using a newer version with older code may result in unintended destruction.

https://www.terraform.io/docs/configuration/terraform.html

    * `required_version`: can use constraint syntax

## STATE

FIRST:

`export ME=REPLACE-WITH-YOUR-NAME` # we'll use this value to stop you clobbering other people's code.

```bash
# The new run mantra - using partial configuration of backend.
alias run_tf="
    rm -rf .terraform *.tfstate* 2>/dev/null ;
    terraform init -backend-config="region=eu-west-1" -backend-config="key=dev/${ME}.tfstate" \
    && terraform plan -input=false \
    && terraform apply -input=false -auto-approve
"
```

copyright Opsgang 2018

