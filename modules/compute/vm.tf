variable instance_shape {}
variable instance_count {}
variable created_image_id {}
variable authorized_keys {}

variable availability_domain {
  type = "string"
}

variable available_subnet {}

resource "oci_core_instance" "TFInstance" {
  count               = "${var.instance_count}"
  availability_domain = "${var.availablity_domain}"
  compartment_id      = "${var.created_compartment_id}"
  display_name        = "test_instance${count.index}"
  shape               = "${var.instance_shape}"

  create_vnic_details {
    subnet_id        = "${var.available_subnet}"
    display_name     = "primaryvnic"
    assign_public_ip = true
    hostname_label   = "testinstance${count.index}"
  }

  source_detail {
    source_type = "image"
    source_id   = "${var.created_image_id}"
  }

  metadata {
    ssh_authorized_keys = "${var.authorized_keys}"
  }

  timeout {
    create = "60m"
  }

}
