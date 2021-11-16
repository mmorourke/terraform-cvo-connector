provider "netapp-cloudmanager" {
  refresh_token = var.token
}

resource "netapp-cloudmanager_connector_aws" "cl-occm-aws" {
  provider                    = netapp-cloudmanager
  name                        = "orourke-conn-aws-terraform"
  region                      = var.region
  key_name                    = "orourke-keypair-xxx-xxx"
  company                     = "NetApp"
  instance_type               = "t3.xlarge"
  subnet_id                   = var.subnetid
  security_group_id           = var.security_group
  iam_instance_profile_name   = "orourke-fsx-connectorOCCM1630334910744-OCCMInstancexxxxxxxx-1BCX43RF7A0CW"
  account_id                  = var.account
  associate_public_ip_address = true
}
