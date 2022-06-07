variable "project" {
  type        = string
  default     = "fsalaman-sandbox-340019"
  description = "Project that will host the GCE instance(s)"
}

variable "zone" {
  type        = string
  default     = "us-central1-c"
  description = "Compute Zone for the GCE instance(s)"
}

variable "vmname" {
  type        = string
  default     = "tfgcevm1"
  description = "Name for the GCE instance"
}

variable "subnet" {
  type        = string
  default     = "fabsv2sn1"
  description = "Name for the GCE instance subnet"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID for GCE instance NIC ** needs to be assigned from net module **"
}

variable "vpcname" {
  type        = string
  default     = "fabsvpc3"
  description = "Name for the GCE instance VPC"
}

variable "imagename" {
  type        = string
  description = "Name/ID of the image required for the GCE instance"
  default     = "debian-11-bullseye-v20220519"
}

variable "machinetype" {
  type        = string
  default     = "g1-small"
  description = "Type or \"flavor\" for GCE instance"
}