# file for iam users

resource "aws_iam_user" "valentin" {
  name = "valentin"
  path = "/users/"
}
