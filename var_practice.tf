
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}




resource "local_file" "pet" {
	filename = "var.files[count.index]"
	content = "This is ${var.files[count.index]}"
	count = length(var.files)
}
	
variable "files" {
	type = list(string)
	default = ["milind.txt" , "Aarush.txt" , "Kamakshi.txt"]
	
}
	
	
