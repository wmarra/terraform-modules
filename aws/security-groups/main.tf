##############
# SEC GROUPS #
##############
resource "aws_security_group" "this" {
  name        = "${var.sg_name}"
  description = "${var.sg_description}"
  vpc_id      = "${var.vpc_id}"
  tags        = "${var.tags}"
}

######################
# SEC GROUPS INGREES #
######################
resource "aws_security_group_rule" "this" {
  count             = "${length(var.inbound_rules)}"
  type              = "ingress"
  cidr_blocks       = ["${element(var.inbound_rules[count.index], 0)}"]
  from_port         = "${element(var.inbound_rules[count.index], 1)}"
  to_port           = "${element(var.inbound_rules[count.index], 2)}"
  protocol          = "${element(var.inbound_rules[count.index], 3)}"
  security_group_id = "${aws_security_group.this.id}"
}

#####################
# SEC GROUPS EGRESS #
#####################
resource "aws_security_group_rule" "this" {
  count             = "${length(var.outbound_rules)}"
  type              = "egress"
  cidr_blocks       = ["${element(var.outbound_rules[count.index], 0)}"]
  from_port         = "${element(var.outbound_rules[count.index], 1)}"
  to_port           = "${element(var.outbound_rules[count.index], 2)}"
  protocol          = "${element(var.outbound_rules[count.index], 3)}"
  security_group_id = "${aws_security_group.this.id}"
}
