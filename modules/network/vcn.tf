variable "created_compartment_id" {}

resource "oci_core_virtual_newtwork" "vcn" {
  cidr_block = "10.0.0.0/16"
  dns_label = "vcn1"
  compartment_id = "${vat.created_compartment_id}"
  display_name = "test-vcn1"
}
