resource "aws_security_group" "main" {
  name        = local.sg_final_name
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = var.vpc_id

  tags = merge(
    var.common_tags,
    var.sg_tags,
    {
      Name = local.sg_final_name
    }
  )
}