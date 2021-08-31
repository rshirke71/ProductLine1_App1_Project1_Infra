###########START OF MODULE EC2 Instance
module "ec2_instances" {
  #from local module
  source  = "../../modules/terraform-aws-ec2-instance"
  #from public registry
  #source  = "terraform-aws-modules/ec2-instance/aws"
  # from VCS 
  #source = "https://github.com/rshirke71/terraform-aws-ec2-instance.git"
  # version = "2.12.0"

  instance_count         = "${local.instance_count}"
  name                   = "${local.application_tag}-${local.name}-${local.tier_tag}-${local.environment}"
  ami                    = "${local.ami}"
  instance_type          = "${local.instance_type}"
  # ebs_optimized          = "${local.ebs_optimized}"
  key_name               = "${local.key_name}"
  # instance_profile_name  = "${local.instance_IAM_profile}"
  subnet_id              = "${local.subnet_id}"
  vpc_security_group_ids = "${local.vpc_security_group_ids}"
  # root_vol_type          = "${local.root_vol_type}"
  # root_vol_size          = "${local.root_vol_sizeGB}"
  # root_vol_del_on_term   = "${local.root_vol_del_on_term}"
  # host_name              = "${local.host_name}"
  # host_ldap_group        = "${local.host_ldap_group}"
  # del_on_term_protect    = "${local.del_on_term_protect}"
  # server_tz              = "${local.server_tz}"
  # sudoer_group           = "${local.sudoer_group}"

  tags = {
      environment          = "${local.environment}"
      tier_tag             = "${local.tier_tag}"
      provisionedby_tag    = "${local.provisionedby_tag}"
  }

  ###Start of TAGS
  # Maintainer_tag       = "${local.Maintainer_tag}"
  # businessunit_tag     = "${local.businessunit_tag}"
  # compliancedomain_tag = "${local.compliancedomain_tag}"
  # costcenter_tag       = "${local.costcenter_tag}"
  # dataclass_tag        = "${local.dataclass_tag}"
  # iac_tag              = "${local.iac_tag}"
  # organization_tag     = "${local.organization_tag}"
  # projectnumber_tag    = "${local.projectnumber_tag}"
  # sdlc_env_tag         = "${local.sdlc_env_tag}"
  # support_group_tag    = "${local.support_group_tag}"
  # supportemail_tag     = "${local.supportemail_tag}"
  # team_tag             = "${local.team_tag}"
  # application_tag      = "${local.application_tag}"
  # component_type_tag   = "${local.component_type_tag}"
  # creation_stage_tag   = "${local.creation_stage_tag}"
  # cluster_tag          = "${local.cluster_tag}"
  # version_tag          = "${local.version_tag}"
  # byolsoftware_tag     = "${local.byolsoftware_tag}"

  ###Clone Related information
  # cloning         = "${local.cloning}"
  # efs_applcsf     = "${local.efs_applcsf}"

  ###END of TAGS
}

###########END OF MODULE EC2 Instance


