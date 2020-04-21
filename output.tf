output "ip" {
  value = "${ibm_pi_instance.power-instance.addresses.externalip}"
}
