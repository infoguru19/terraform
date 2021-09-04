variable "file_name" {}

resource "local_file" "app" {
    content     = "foojhghg!"
    filename = "${var.file_name}"
    file_permission = "747"
}

