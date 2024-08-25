## Input Variables as Environment Variables (Unix or Linux Environments)
```t
# Comment machine_type in terraform.tfvars
#machine_type  = "e2-micro"

# Set Environment Variable
export TF_VAR_machine_type="e2-standard-2"
echo $TF_VAR_machine_type

# Run Terraform Plan
terraform plan
Observation: Machine type configured will be "e2-standard-2" from environment variable set

# Unset Environment variable
unset TF_VAR_machine_type
echo $TF_VAR_machine_type

# Run Terraform Plan
terraform plan
Observation: Machine type configured will be "e2-small" from variables.tf default value

# Variable Precendence
Priority-1: Any -var and -var-file options on the command line, in the order they are provided. 
Priority-2: Any *.auto.tfvars or *.auto.tfvars.json files, processed in lexical order of their filenames.
Priority-3: The terraform.tfvars.json file, if present.
Priority-4: The terraform.tfvars file, if present.
Priority-5: Environment variables

# Comment machine_type in terraform.tfvars
machine_type  = "e2-micro"
```