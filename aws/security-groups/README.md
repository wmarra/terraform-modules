## AWS Security Groups

Terraform module to create AWS security groups.

### Inputs 

* **vpc_id**: VPC reference of your security group
* **sec_group_name**: Security Group name
* **sec_group_description**: Description of your sec. group
* **sec_group_inbound_rules**: Inbound Rules map
* **sec_group_outbound_rules**: outbound Rules map
* **sec_group_tags**: Tag maps

### Ouputs

* **ec_group_id**: Security Group name
* **sec_group_inbound_rules**: Inbound Rules map
* **sec_group_outbound_rules**: outbound Rules map

### Usage

```
module "sec_group" {
  source = "github.com/hotmart-Org/terraform-modules/aws-sec-group"
  
  sg_name        = ["${var.sec_group_name}"]
  sg_description = ["${var.sec_group_description}"]
  vpc_id         = ["${var.vpc_id}"]
  
  inbound_rules = {
    "0" = [ "${var.your_source_cidr_block}", "80", "80", "TCP" ]
    "1" = [ "${var.your_source_cidr_block}", "443", "443" "TCP" ]
    "2" = [ "${var.another_source_cidr_block}", "1200", "1200" "UDP" ]
  }
  
 	outbound_rules = {
    "0" = [ "0.0.0.0/0", "0", "0", "-1" ]
  }
 
  tags = "${var.your_tags}"
}
```