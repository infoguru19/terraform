resource "random_pet" "my_pet"{
	prefix = "Mrs"
	separator = "."
	length = "1"
}

output "pet-name"{
	value = "${random_pet.my_pet.id}"
	description = "Store Pet ID"
}
