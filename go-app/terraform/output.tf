
output "app_plan_name" {
  description = "Name of the App Service Plan"
  value       = module.appservice_plan.app_plan_name
}

output "app_plan_kind" {
  description = "Kind of the App Service Plan"
  value       = module.appservice_plan.app_plan_kind
}

output "app_plan_workers" {
  description = "Number of workers created for the App Service Plan"
  value       = module.appservice_plan.app_plan_workers
}

output "app_plan_id" {
  description = "Tier of the App Service Plan"
  value       = module.appservice_plan.app_plan_id
}

output "app_service_name" {
  description = "Name of the App Service"
  value       = module.appservice.app_service_name
}

output "app_service_default_site_hostname" {
  description = "The Default Hostname associated with the App Service"
  value       = module.appservice.app_service_default_site_hostname
}


