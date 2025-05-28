# output "service" {
#   value = templatefile(
#     "${path.module}/templates/HelloWorld.tftpl",
#     {
#       user = var.user
#     }
#   )
# }

resource "local_file" "helloworld" {
  filename = "${path.module}/helloworld.txt"
  content  = templatefile(
    "${path.module}/templates/HelloWorld.tftpl",
    {
      user   = var.user
      likes  = var.likes
    }
  )
}