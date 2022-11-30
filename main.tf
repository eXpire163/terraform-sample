variable "BUILD_ID" {
  default = "single build"
}


resource "null_resource" "hello_world" {
  provisioner "local-exec" {
    command     = <<EOT
      echo "hello world $BUILD_ID"
    EOT
    environment = { ITEMS = var.BUILD_ID }
  }
}
