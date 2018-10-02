resource "oci_core_internet_gateway" "gateway" {
  compartment_id = "${var.created_compartment_id}"
  display_name   = "testInternetGateway"
  vcn_id         = "${oci_core_virtual_network.vcn.id}"
}
