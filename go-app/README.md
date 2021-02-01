# GitOps Demo - Terraform 

Deploy container Application on Azure App service using terraform.



# TFVARS
```
resource_group_name      = "RG_iqbal_test"
app_name                 = "go-app"
container_type           = "docker"
container_image          = "diquzart/go-app"
container_image_tag      = "latest"
container_image_registry = "https://index.docker.io"
appservice_plan_name     = "App-plan-B1-Linux"
app_banner               = "App deployed by Terraform"
app_port                 = "8080"
pipeline_id              = 2
expiry_date              = ""
kind                     = "Linux"
tier                     = Basic
size                     = B1
```

# Azure Pipeline Vars
```
armConnectionName
backend-sa-rg-name
backend-sa-name
backend-sa-container-name
tf-state-file-name
DefinitionId
expiry_date

```