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

variable "subnet" {
  type        = string
  default     = "fabsv0sn0"
  description = "Name for the GCE instance subnet"
}

variable "vpcname" {
  type        = string
  default     = "fabsvpc1"
  description = "Name for the GCE instance VPC"
}

variable "bgpasn" {
  type        = number
  default     = 4212000003
  description = "ASN for the BGP router"
}

variable "natname" {
  type        = string
  default     = "fabsnat2"
  description = "Name for the NAT instance"
}

variable "routername" {
  type        = string
  default     = "fabsrouter2"
  description = "Name for the BGP router"
}

variable "cidr_range" {
  type    = string
  default = "172.16.38.0/25"
}

