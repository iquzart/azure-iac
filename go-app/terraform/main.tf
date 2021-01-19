# Azure Appservice 

data "azurerm_resource_group" "rg" {
  name = "RG_iqbal_tests"

}


module "appservice_plan" {
  #source = "./modules/azurerm-appservice-plan"
  source  = "github.com/iquzart/terraform-azurerm-appservice-plan"

  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  name                = var.appservice_plan_name
  plan_settings       = var.plan_settings
  tags                = var.tags
}


module "appservice" {
    #source = "./modules/azurerm-appservice"
    source  = "github.com/iquzart/terraform-azurerm-appservice"

    resource_group_name      = data.azurerm_resource_group.rg.name
    location                 = data.azurerm_resource_group.rg.location
    app_service_plan_id      = module.appservice_plan.app_plan_id
    app_name                 = var.app_name     
    container_type           = var.container_type
    container_image          = var.container_image
    container_image_tag      = var.container_image_tag
    container_image_registry = var.container_image_registry
}
