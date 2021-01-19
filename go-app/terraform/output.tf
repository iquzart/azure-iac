# Azure App Service Plan - Output

output "app_plan_name" {
  description = "Name of the App Service Plan"
  value       = module.appservice_plan.app_plan_name
}

output "app_plan_kind" {
  description = "Kind of the App Service Plan"
  value       = module.appservice_plan.app_plan_kind
}


output "app_plan_id" {
  description = "Tier of the App Service Plan"
  value       = module.appservice_plan.app_plan_id
}
