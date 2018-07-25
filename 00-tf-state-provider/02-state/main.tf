# vim: et sr sw=4 ts=4 smartindent:
#
# DID YOU EXPORT AWS CREDS?
#

# REMOTE STATE
# * share config with other operators.
# * ... many backends - see https://www.terraform.io/docs/backends/types/index.html
#       ... different pros and cons, particularly locking and versioning.
# 1. S3 backend inline
terraform {
    required_version = "~> 0.11"

    backend "s3" {
        bucket = "terraform-fundamentals"

        region = "eu-west-1" # for step 2, delete this line.
        # For step 1 use your name instead of mine!
        key    = "/dev/jin.tfstate" # delete this line for step 2.
    }
}

# 2. S3 backend - pass to terraform init

# Amend your tf_run alias to pass the cfg to terraform init.
# ... the flag is -backend-config, specified once per key/val pair
# ... the value is "key=val"
# e.g. terraform init -backend-config="region=eu-west-1"

# Now amend the backend block above as instructed (delete the region and key lines)

# ... but why do this? Isn't IaC about explicit declarations in code?
# Generally we want key to be left out of the IaC as we want a different state per env.
# That way you can run the same terraform against different environments.
#
# Equally you might want to spin up a stack in a totally different region, so often
# that is left out too.
#
# Using command line opts means we can specify these dynamic vals outside of the IaC.
#
# Later we'll see that terraform does allow you to pass values in to the terraform
# run by defining variables and passing them in via the shell.
# However the backend section does NOT support these ...
# So passing via command line is really the only way.
#
# Pro tip:
# Additionally note that if we pass parameters via the shell, we can dynamically generate
# vals at terraform run-time, before invoking terraform run.
#
# When creating environmentally agnostic IaC or injecting secrets, this is a vital technique.
# See the Variables lesson for more on this.
#
# copyright Opsgang 2018
