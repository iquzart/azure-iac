variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "appservice_plan_name" {
  description = "App service plan name"
  type        = string
}

variable "plan_settings" {
  type        = map(string)
  description = "Definition of the dedicated plan to use"

  default = {
    kind = "Linux" # Linux or Windows
    size = "B1"
    tier = "Basic"
  }
}

# Azure App service Plan

variable "location" {
  description = "App service location"
  type        = string
  default     = ""
}

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

# Tags
variable "app_tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default = {
    "Environment" = "Development"
    "BU"          = "Information Technology"
  }
}

# IAC Tags
variable "expiry_date" {
  type = string
  default = ""
}

variable "pipeline_id" {
  type = string
  default = ""
}


