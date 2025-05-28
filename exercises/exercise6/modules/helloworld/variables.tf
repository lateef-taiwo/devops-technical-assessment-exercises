variable "user" {
  type        = string
  description = "Name of user."
}

variable "likes" {
  type    = list(string)
  default = []
}
