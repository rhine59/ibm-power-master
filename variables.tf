variable "ibmcloud_api_key" {
  description = "key"
  default = ""
}

variable "ibmcloud_region" {
  description = "IBMCloud Region"
  default = "us-south"
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
  default = "shared"
}

variable "sys_type" {
  default = "s922"
}

variable "powerinstanceid" {
  description = "Power Instance associated with the account"
  default = "2adcae61-db54-45c8-a816-a8b8c66679e8"
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
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDREXgmkzT2brACuNhkkwaCQkoMEIj/JicTsIK2S1pASQl7b5e/JPnH6MLf62j8jlZ+h3YOEYrxfhHr1tOiXy0iTFOvVZm4pRBXwiqDe0Cgi46pHABgQBsi2Gr/4gjjLEdAbRp6j4v0la9DB7z71+zUe3JhQ85RggFiiaX1JFQU+Gr/6Q7PcDeWt3PeXagJkm+ddVr28RcRzTnM9HWquld3urXUt6l30u9Gnh8+yQKaoJNwVwG28J8K2bihisxXP47EwOCdAQ8jmcDIVa7d1BRZ+JQfB3zKmStm25zAjaJrCymcAXpRaBx5M/M1sBIgDKrQ5XWYHgWGSHIFRCPgOYkl rhine@macbook"
}

