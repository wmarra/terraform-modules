variable "vpc_id" {
  type        = "string"
  description = "The vpc id of your security group"
  default     = ""
}

variable "sec_group_name" {
  type        = "string"
  description = "The name of your security group"
  default     = ""
}

variable "sec_group_description" {
  type        = "string"
  description = "Describe of your security group"
  default     = "Security group created by terraform sec. group module."
}

variable "sec_group_inbound_rules" {
  type        = "map"
  description = "Map of inbound rules"
  default     = ""
}

variable "sec_group_outbound_rules" {
  type        = "map"
  description = "Map of outbound rules"
  default     = ""
}

variable "sec_group_tags" {
  type        = "map"
  description = "Tags of your security group"
  default     = ""
}
