resource "null_resource" "hello_world" {
  provisioner "local-exec" {
    command = <<EOT
      echo "hello world"
    EOT
  }
}
