variable "stud_name" {
  type    = string
  default = "Anuj Dhanke"
}

variable "stud_age" {
  type    = number
  default = 20
}

variable "challenge_day" {
  description = "This variable is used to store the day of the challenge"
  type        = number
  default     = 2
}

variable "completed" {
  type    = bool
  default = true
}

variable "topics" {
  description = "Topics learned today"
  type        = list(string)
  default = [
    "Variables",
    "Data Types",
    "Expressions"
  ]
}

variable "social_links" {
  description = "My social links"
  type        = map(string)
  default = {
    github   = "https://github.com/anujdhanke"
    linkedin = "https://www.linkedin.com/in/anuj-dhanke-b736b52b9/?skipRedirect=true"
  }
}

variable "challenge_details" {
  description = "Details of the challenge"
  type = object({
    title    = string
    language = string
    version  = string
  })
  default = {
    title    = "Terraform Terraweek Challenge"
    language = "Terraform"
    version  = "1.15.7"
  }
}



