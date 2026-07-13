resource "local_file" "day02" {
  filename = "terraform-day02.txt"

  content = <<-EOT
==============================
Terraform TerraWeek 2026
==============================

Student Name: ${var.stud_name}
Student Age: ${var.stud_age}

Challenge Day: ${var.challenge_day}
Completed: ${var.completed}

Project Title : ${var.challenge_details.title}
Language : ${var.challenge_details.language}
Terraform Version : ${var.challenge_details.version}

Topics Learned Today:
${join("\n", var.topics)}

Social Links:
Github   : ${var.social_links.github}
LinkedIn : ${var.social_links.linkedin}

==============================
Day 02 Challenge Completed Successfully!
==============================
EOT
}