variable "resourcegroupName" {
  type = string
}

variable "resourcegroupLocation" {
  type    = string
  default = "Australia East"
}

variable "resourcegroupTags" {
  type = map(any)
}

variable "virtualnetworkName" {
    type = string
}

variable "subnetName" {
    type = string
}

variable "envTags" {
    type = map(any)
}