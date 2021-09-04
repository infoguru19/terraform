provider "local" {}
provider "random"{}


module "random_module"{
  source = "./random_module"
}

module "local_module_1" {
  file_name = "${module.random_module.pet-name}_${local.env}"
  source = "./local_module"
}

module "local_module_2" {
  file_name = "abc_${local.env}"
  source = "./local_module"
}

locals{
	env = "${terraform.workspace}"
}
