variable "project" {
  type    = string
  default = "fsalaman-sandbox-340019"
}

variable "zone" {
  type    = string
  default = "us-central1-c"
}

variable "vmname" {
  type    = string
  default = "fabsvm1"
}

variable "subnet" {
  type    = string
  default = "fabsv1sn3"
}

variable "vpcname" {
  type    = string
  default = "fabsvpc1"
}

variable "bgpasn" {
  type    = number
  default = 64577
}

variable "natname" {
  type    = string
  default = "fabsnat1"
}

variable "routername" {
  type    = string
  default = "fabsrouter1"
}
 variable "imagename" {
   type = string
   description = "Name/ID of the image required for the GCE instance"
 }