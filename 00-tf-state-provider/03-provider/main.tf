# vim: et sr sw=4 ts=4 smartindent:
#
# DID YOU EXPORT AWS CREDS?
#

# PROVIDERS
#
# Terraform can instantiate artefacts on a wide variety of platforms/services/clouds
# e.g. heroku pipelines, fastly services, cloudflare domains
#
# For each, you must declare a "provider" - basically a plugin to terraform 
#
# ... we will be looking at aws.
#
terraform {
    required_version = "~> 0.11"

    backend "s3" {
        bucket = "terraform-fundamentals"
    }
}

provider "aws" {
}

#
# copyright Opsgang 2018
