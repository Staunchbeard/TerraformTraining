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