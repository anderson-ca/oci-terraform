# Authentication detail
export TF_VAR_tenancy_ocid="ocid1.tenancy.oc1..aaaaaaaa3y7o62tr7xusbs7zrrnrgr6ftly6uwi4aehpqh6jlhe6dqkbwmxa"
export TF_VAR_user_ocid="ocid1.user.oc1..aaaaaaaahetr2joi3khxklmh5n3rd27r64dgvycx6gziwxoy4etbocsopiaq"
export TF_VAR_fingerprint="f7:24:c3:bb:5f:10:1e:06:ed:61:db:77:c6:21:30:f3"
export TF_VAR_private_key_path="~/Users/ancardos/.oci/oci_api_key.pem"
# Region
export TF_VAR_region="us-ashburn-1"
# Comportment
export TF_VAR_compartment_ocid="ocid1.tenancy.oc1..aaaaaaaa3y7o62tr7xusbs7zrrnrgr6ftly6uwi4aehpqh6jlhe6dqkbwmxa"
# Public/Private key used in instance
export TF_VAR_private_key_path=$(cat ~/.ssh/id_rsa.pub)
export TF_VAR_public_key_path=$(cat ~/.ssh/id_rsa)
