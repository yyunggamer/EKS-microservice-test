resource "aws_ecr_repository" "micro" {
  for_each = toset(var.service_names)
  name = each.value
  image_tag_mutability = "MUTABLE"
}
