# Global
variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the App Service Plan component."
  type        = string
}

# IaC tags
variable "expiry_date" {
  description = "(Optional) Tag value"
  type        =  string
}

variable "pipeline_id" {
  description = "(Optional) Tag value"
  type        =  string
}

# Azure App Service Plan Variables
variable "appservice_plan_name" {
  description = "(Required) Specifies the name of the App Service Plan component. Changing this forces a new resource to be created."
  type        = string
}

variable "kind" {
  description = "(Optional) The kind of the App Service Plan to create. Possible values are Windows (also available as App), Linux, elastic (for Premium Consumption) and FunctionApp (for a Consumption Plan). Defaults to Windows. Changing this forces a new resource to be created"
  type        = string
}

variable "size" {
  description = "(Required) Specifies the plan's instance size"
  type        = string
}

variable "tier" {
  description = "(Required) Specifies the plan's pricing tier"
  type        = string
}

# Azure App service Plan
variable "app_name" {
  description = "App service name"
  type        = string
  default     = ""
}

variable "app_service_plan_id" {
  description = "App service plan id"
  type        = string
  default     = ""
}

variable "container_type" {
  description = "Type of container. The options are: `docker`, `compose` or `kube`."
  type        = string
  default     = ""
}

variable "container_image" {
  description = "Container image name. Example: diquzart/flaskapp"
  type        = string
  default     = ""
}

variable "container_image_tag" {
  description = "Container image tag"
  type        = string
  default     = ""
}

variable "container_image_registry" {
  description = "Container image registry"
  type        = string
  default     = "https://index.docker.io"
}


variable "app_settings" {
  description = "(Optional) A key-value pair of App Settings"
  type        = map(string)
  default     = {}
}

variable "app_banner" {
  type = string
  default = "App running created by Terraform"
  
}

variable "app_port" {
  type = string
  default = "8080"
  
}

variable "site_config" {
  description = "Site config for App Service."
  type        = any
  default     = {}
}

variable "connection_string" {
  description = "Connection strings for App Service"
  type        = list(map(string))
  default     = []
}
