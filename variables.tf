# Sensitive Variables to Pass as Terrafrom CLI Args or ENV Vars
variable "pm_api_token_id" {
  sensitive = true
  nullable  = false
}

variable "pm_api_token_secret" {
  sensitive = true
  nullable  = false
}

# Sensitive Variables
variable "pm_api_url" {
  description = "Proxmox API Endpoint, e.g. 'https://pve.example.com/api2/json'"
  type        = string
  sensitive   = true
  validation {
    condition     = can(regex("(?i)^https://.*/api2/json$", var.pm_api_url))
    error_message = "Proxmox API Endpoint Invalid. Check URL - HTTPS and PATH req."
  }
}