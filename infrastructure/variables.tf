variable "region" {
  type    = string
  default = "us-east-1"
}

variable "cluster_name" {
  type    = string
  default = "test-micro-eks"
}

variable "service_names" {
  type = list(string)
  default = ["svc1","svc2","svc3","svc4","svc5"]
}
