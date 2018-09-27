variable created_compartment_id {}
variable name_of_image {}
variable launch_mode {}
variable source_type {}
variable bucket_name {}
variable namespace_name {}
variable object_name {}

resource "oci_core_image" "test_image" {
  # required
  compartment_id = "${var.created_compartment_id}"

  # optional
  display_name = "${var.name_of_image}"
  launch_mode = "${var.launch_mode}"

  image_source_details {
    source_type = "${var.source_type}"
    bucket_name = "${var.bucket_name}"
    namespace_name = "${var.namespace_namer}"

  }
}

data "oci_core_images" "test_images" {
  # required
  compartment_id = "${var.created_compartment_id}"

  # optional
  display_name = "${var.object_name}"
}

output "created_image_id" {

  value = "${lookup(data.oci_core_images.test_images.images[0], "id")}"
}
