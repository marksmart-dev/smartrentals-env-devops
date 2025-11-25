variable "billing_account" {
  description = "The ID of the billing account to associate projects with"
  type        = string
  default     = "01A890-50B478-5C132C"
}

variable "org_id" {
  description = "The organization id for the associated resources"
  type        = string
  default     = "403564791417"
}

variable "billing_project" {
  description = "The project id to use for billing"
  type        = string
  default     = "cs-host-c6889db1289b4fba8e3d96"
}

variable "folders" {
  description = "Folder structure as a map"
  type        = map
}

variable "application_enabled_folder_paths" {
  description = "The folder paths to enable resource manager capability"
  type        = list
}
