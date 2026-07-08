resource "local_file" "my_pet" {
  filename = "pets.txt"
  content = "My cat name is ${random_pet.petname.id}"
  depends_on = [ random_pet.petname ]
}
resource "random_pet" "petname" {
  prefix = "MR"
  separator = "."
  length = "1"
}
output "mypetname" {
  value = random_pet.petname.id
}