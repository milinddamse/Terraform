resource "local_file" "f1" {
			  filename = "123.txt"
			  content  = "test"
}

resource "local_file" "f2" {
			  filename = "xyz.txt"
			  content  = "This is the sample content"
			  depends_on=[local_file.f1]
}

resource "local_file" "f3" {
			  filename = "abc.txt"
			  content  = "This is the sample content"
			  depends_on=[local_file.f2]
			  
}
		
resource "local_file" "f4" {
			  filename = "milind.txt"
			  content  = "This is the sample content"
			  depends_on=[local_file.f3]
}
		
output "sample" {

	value = local_file.f4.id
	
}	
