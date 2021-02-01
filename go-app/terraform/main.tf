# Azure Appservice 

# Set IAC Tags 
locals {
  tags = {
    ExpiryDate = var.expiry_date
    PipelineID = var.pipeline_id
    Env        = "Development"
    Owner      = "Muhammed Iqbal"
    Stack      = "GoApp Container"
  }

}

# Set Reource group from data
data "azurerm_resource_group" "rg" {
   name = var.resource_group_name
}

# Deploy App Service Plan
module "appservice_plan" {
  source  = "github.com/iquzart/terraform-azurerm-appservice-plan"

  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  name                = var.appservice_plan_name
  kind                = var.kind
  tier                = var.tier
  size                = var.size
  tags                = local.tags
}

# Deploy App Service
module "appservice" {
  source  = "github.com/iquzart/terraform-azurerm-appservice"

  resource_group_name      = data.azurerm_resource_group.rg.name
  location                 = data.azurerm_resource_group.rg.location
  app_service_plan_id      = module.appservice_plan.app_plan_id
  app_name                 = var.app_name

  site_config = {
    linux_fx_version = "${var.container_type}|${var.container_image}:${var.container_image_tag}"
    always_on        = true
    http2_enabled    = true
    min_tls_version  = 1.2  
  }


  app_settings = { 
    "BANNER"   = var.appbanner, 
    "PORT"     = var.app_port 
    }
  
  tags         = local.tags
}
