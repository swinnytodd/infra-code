# file for iam users

resource "aws_iam_user" "valentin" {
  name = "valentin"
  path = "/users/"
}

resource "aws_iam_user" "swinnytodd" {
  name = "swinnytodd"
  path = "/users/"
}

