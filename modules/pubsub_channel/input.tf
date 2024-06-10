variable "name" {
  type     = string
  nullable = false
}

variable "ack_deadline_seconds" {
  type    = number
  default = 600
}

variable "minimum_backoff_seconds" {
  type    = number
  default = 30
}
variable "maximum_backoff_seconds" {
  type    = number
  default = 600
}
variable "max_delivery_attempts" {
  type    = number
  default = 20
}
