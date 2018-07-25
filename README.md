[1]: https://blog.gruntwork.io/why-we-use-terraform-and-not-chef-puppet-ansible-saltstack-or-cloudformation-7989dad2865c "Gruntworks - why terraform"
# Terraform 101

>
> Dive in to using Terraform to provision AWS resources.
>

## Why We Use Terraform

### What?

    * IaC - audit, governance, repeatability, versioning etc ...

    * Infrastructure | Platform provisioning
        ... not really for OS / app level configuration
        ... it's not a cfg management tool really.

### Why?

    * Mutable vs. Immutable || Build time vs. Deploy time.

    * Procedural vs. Declarative

    * Client Vs. Client/Server or Master/Agent

    * Maturity

See [post by gruntworks.io][1] for thorough explanation and comparison.

## NOTES TO INSTRUCTOR

To complete this tutorial you need an AWS account with:

* a public subnet (for spinning up the EC2 resources)

* a route53 public hosted zone

* an pre-created S3 bucket for storing terraform state.

Fork this repo.

Edit the setenv file with your vals.

> Make sure you have gettext installed (provides the `envsubst` command).

Before the lesson, source the setenv script to set the correct vals
in the code.

Commit and push back to your fork, or distribute to students in some other way.
