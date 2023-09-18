# variable assignment
# override order
# 1 - cli flags 
#   terraform plan -var="instancetype=t2.small"
#   terraform plan -var-file="custom.tfvars" (custom file option)
# 2 - tfvars file
# 3 - env variable (TF_VAR_varname)
# 4 - default variables.tf file

# --- there are different types of variables
# string
# number
# list -> [1,2,3]
# map -> {value = "1", value2 = "2"}