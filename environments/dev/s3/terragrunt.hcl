include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/s3"
}

dependency "kms" {
  config_path = "../kms"
}

inputs = {
    kms_key_id = dependency.kms.outputs.kms_key_id
}