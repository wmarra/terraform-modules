output "sec_group_id" {
  value = "${aws_security_group.this.id}"
}

output "sec_group_inbound_rules" {
  value = "${aws_security_group.this.ingress}"
}

output "sec_group_outbound_rules" {
  value = "${aws_security_group.this.egress}"
}
