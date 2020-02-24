variable "ibmcloud_api_key" {
  description = "key"
  default = ""
}

variable "ibmcloud_region" {
  description = "Germany"
  default = "eu-de"
}

variable "processors" {
  description = "Number of Power Processors"
  default = 0.25
}

variable "memory" {
  description = "Memory in MB"
  default = 2
}

variable "imagename" {
  description = "Name of the image key to be used"
  default = "IBMi-72-09-002"
}

variable "proc_type" {
  default = ["shared"]
}

variable "sys_type" {
  default = ["s922"]
}

variable "powerinstanceid" {
  description = "Power Instance associated with the account"
}

variable "instancename" {
  default = "ACMEInstance"
  description = "Name of the instance"
}

variable "sshkeyname" {
  default = "mykey"
  description = "Name of the ssh key to be used"
}

variable "volname" {
  default = "myvol"
  description = "Name of the volume"
}
variable "networkname" {
  default = "mypublicnw"
  description = "Name of the network"
}

variable "sshkey" {
  description = "Public ssh key"
}

