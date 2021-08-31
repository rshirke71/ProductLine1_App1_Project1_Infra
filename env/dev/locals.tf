locals {
  ###TAGS
  instance_count          = 3
  name                    = "EC2"
  environment             = "DEV"
  tier_tag                = "APP"
  provisionedby_tag       = "Terraform"
  application_tag         = "BCM"

  ###AMI ID
  ami                     = "ami-0c2b8ca1dad447f8a"

  ###INSTACE Details
  instance_type           = "t2.micro"
  # ebs_optimized           = "true"

  ###IAM Details
  key_name                = "aws_cloud_nonprod"
  # instance_IAM_profile = "placeholder <role-name>"
  # del_on_term_protect  = "true"

  ###NETWROKING DETAILS
  subnet_id               = "subnet-391e4a66"
  vpc_security_group_ids  = ["sg-0432b47d23213ef76"]

  # version_tag             = "1.0"
  # Maintainer_tag          = "placeholder"
  # businessunit_tag        = "placeholder"
  # compliancedomain_tag    = "placeholder"
  # costcenter_tag          = "placeholder"
  # dataclass_tag           = "placeholder"
  # iac_tag                 = "DEV_APP"
  # organization_tag        = "it"
  # projectnumber_tag       = "placeholder"
  # sdlc_env_tag            = "DEV"
  # support_group_tag       = "placeholder"
  # supportemail_tag        = "placeholder"
  # team_tag                = "placeholder"
  # component_type_tag      = "APP"
  # cluster_tag             = "n"  ##if component is part of any cluster, then there might be some shared storage configuration required

  # ###Clone related info
  # cloning         = "n"              ##indicates if this component will be cloned
  # efs_mount       = ""               ## EFS Target

  # ###Root Volume Details
  # root_vol_type        = "gp2"
  # root_vol_sizeGB      = "100"
  # root_vol_del_on_term = "true"

  ###Host Name
  # host_name = "pprojappd01a01"

  # ###Host LDAP Greoup
  # host_ldap_group = "placeholder"

  # ###Host TimeZone
  # server_tz = "placeholder"

  # ###Host Sudoer Group
  # sudoer_group = "placeholder"

  # ###Host internal EBS Volume Details
  # ebs_vol_az                     = "placeholder"
  # ebs_swap_sizeGB                = "placeholder"
  # ebs_tmp_sizeGB                 = "placeholder"
  # ebs_exporthome_sizeGB          = "placeholder"
  # ebs_vol_type                   = "placeholder"
  # ebs_export_home_vol_encrypted  = "placeholder"
  # ebs_swap_vol_encrypted         = "placeholder"
  # ebs_tmp_vol_encrypted          = "placeholder"
  # ebs_export_home_vol_kms_key_id = "placeholder"
  # ebs_swap_vol_kms_key_id        = "placeholder"
  # ebs_tmp_vol_kms_key_id         = "placeholder"
}