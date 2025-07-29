
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}




resource "local_file" "alpha" {
	for_each = var.mapping
	filename = each.value
	content = "This is the map content ${each.value}"

}
	

	
variable "mapping" {
		type = map(string)
		default = {
		key1 = "A1"
		key2 = "A2"
		key3 = "A3"
		}
}		
