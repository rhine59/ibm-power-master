variable "service_instance_name" {
  description = "IBM Cloud Service Instance Name"
}
data "ibm_resource_instance" "instance" {
  name = var.service_instance_name
}
data "ibm_pi_images" "powerimages" {
 pi_cloud_instance_id = split(":", data.ibm_resource_instance.instance.crn)[7]
}
