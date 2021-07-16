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

variable "nsgName" {
  type = string
}

variable "pipName" {
  type = string
}

variable "nicName" {
  type = string
}

variable "vmName" {
  type = string
}