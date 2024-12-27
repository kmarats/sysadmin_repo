variable "virtual_machines" {
 default = ""
}

variable "yc_token" {
  description = "OAuth token for Yandex Cloud."
  sensitive   = true
}

variable "yc_cloud_id" {
  description = "Cloud ID for your Yandex Cloud project."
}

variable "yc_folder_id" {
  description = "Folder ID where the resources will be created."
}

variable "ssh_user" {
  type    = string
  default = "marat"
}
