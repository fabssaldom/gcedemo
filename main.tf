module "net" {
  source = "./modules/network"
  subnet = "fabstfv0sn0"
}

module "vm" {
  source     = "./modules/vms"
  subnetwork = module.net.subnet_id
  vmname = "fabstfvm1"
}