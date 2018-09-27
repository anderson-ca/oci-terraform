variable instance_shape {}
variable instance_count {}
variable created_image_id {}
variable authorized_keys {}
variable availability_domain { type = "string" }
variable available_subnet {}

resource "oci_core_instance" "TFInstance" {
  count               = "${var.instance_count}"
  availability_domain = "${var.availablity_domain}"
  compartment_id      = "${var.created_compartment_id}"
  display_name        = "test_instance${count.index}"
  shape               = "${var.instance_shape}"
}
