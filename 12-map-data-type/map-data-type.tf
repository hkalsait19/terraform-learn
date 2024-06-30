# MAP represents collection of Key-Value pair with curly braces/brackets {} like: default {name="abcde" env="dev"}

# for creation of TAGS can using map

# Example 1: directly pass the values inline command in apply

/*
variable "my-map" {
    type = map
}
output "variable_value" {
  value = var.my-map
}
*/
# we got an error while plan but pass the value in var.my-map like:
# Enter a value: {"Team"="India","Format"="T20"}
# Successfully run the pgm


# Example 2: Pass the values directly inside pgm

variable "my-map" {
    type = map
    default = {
        Team="Team India"
        Format:"T20"
    } 
}

output "variable_value" {
  value = var.my-map
}


