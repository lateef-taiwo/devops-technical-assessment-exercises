resource "local_file" "file1" {
  content  = "Yo ho ho, I'm File 1"
  filename = "${path.root}/file1.txt"
}

