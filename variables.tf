# ------------------------------------------------------------------------------
# Input Parameter
# ------------------------------------------------------------------------------

variable "serverCount" {
  description = "How many servers should be created?"
  type        = number
  default     = 2
  #Contract Tests - mögliche Funktionen https://www.terraform.io/language/functions
  validation {
    condition     = var.serverCount > 0
    error_message = "serverCount has to be greater than zero."
  }
}

variable "dbSize" {
  description = "size of the database"
  type        = number
  default     = 256
  validation {
    condition     = var.dbSize > 128
    error_message = "dbSize has to be greater than 128."
  }
}