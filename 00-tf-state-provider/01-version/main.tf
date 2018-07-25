# vim: et sr sw=4 ts=4 smartindent:

# 1. Run terraform
# the tf-run mantra
#
#   terraform init
#   terraform plan -input=false
#   terraform apply -input=false -auto-approve
#
# Try it!
terraform {
}

# 2. MEET THE TFSTATE FILE
# Now check out the tfstate file that has appeared.
#
# The state file records the current state of the resources you've
# described. It also stores user-defined dependency info - which resource has to be 
# provisioned before another etc ...
#
# Different versions of terraform work with different versions of state file format.
#
# See the version at the top? That's the state file format's version.
# Using terraform 0.10.x with version 3, prompts an error, that the version of
# terraform is too old.
#
# But using 0.8.x terraform, you might find that terraform would not error, but misunderstand
# the more recent file format, and destroy some of your resources.

# 3. SPECIFYING VERSION
# ... add the line below to the terraform block and re-run the mantra.
#
#    required_version = "~> 0.10" # where 0.10.0 <= version < 0.11.0

# ... it'll blow up as constraint not met.

# ... now change to 0.11 ... and voila!

# copyright Opsgang 2018
