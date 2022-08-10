variable "stringV" {
  type    = string
  default = "thisadefaultvalue"
}

variable "maptype" {
  type = map(string)
  default = {
    subnet1 = "subnet1"
    subnet2 = "subnet2"
    subnet3 = "subnet3"
  }
}

variable "listtype" {
  type    = list(string)
  default = ["item1", "item2", "item3"]
}
