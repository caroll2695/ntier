output "nat.ip" {
  value = "${aws_instance.nat.public_ip}"
}

output "appservers" {
    value = "${join(",", aws_instance.app.*.private_ip)}"
}

output "elb.hostname" {
  value = "${aws_elb.app.dns_name}"
}
