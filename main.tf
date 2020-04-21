resource "ibm_pi_key" "key" {
  pi_cloud_instance_id = var.powerinstanceid
  pi_key_name          = var.sshkeyname
  pi_ssh_key           = var.sshkey
}

data "ibm_pi_key" "sshkey" {
  depends_on           = [ibm_pi_key.key]
  pi_cloud_instance_id = var.powerinstanceid
  pi_key_name          = var.sshkeyname
}

resource "ibm_pi_network" "power_networks" {
  count                = 1
  pi_network_name      = var.networkname
  pi_cloud_instance_id = var.powerinstanceid
  pi_network_type      = "pub-vlan"
}

data "ibm_pi_public_network" "public" {
  depends_on           = [ibm_pi_network.power_networks]
  pi_cloud_instance_id = var.powerinstanceid
}

data "ibm_pi_images" "power_images" {
  pi_cloud_instance_id = var.powerinstanceid
}

resource "ibm_pi_volume" "volume"{
  pi_volume_size       = 20
  pi_volume_name       = var.volname
  pi_volume_type       = "ssd"
  pi_volume_shareable  = true
  pi_cloud_instance_id = var.powerinstanceid
}

data "ibm_pi_volume" "dsvolume" {
  depends_on           = [ibm_pi_volume.volume]
  pi_cloud_instance_id = var.powerinstanceid
  pi_volume_name      = var.volname
}

resource "ibm_pi_instance" "power-instance" {
    pi_memory             = var.memory
    pi_processors         = var.processors
    pi_instance_name      = var.instancename
    pi_cloud_instance_id  = var.powerinstanceid
    pi_proc_type          = var.proc_type
    pi_image_id           = [for image in data.ibm_pi_images.power_images.image_info : image.id if image.name == var.imagename][0]
    pi_network_ids        = [data.ibm_pi_public_network.public.id]
    pi_key_pair_name      = data.ibm_pi_key.sshkey.id
    pi_sys_type           = var.sys_type
    pi_volume_ids         = ["ibm_pi_volume.volume.volume_id"]
}
