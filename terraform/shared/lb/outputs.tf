output "output" {
  value = {
    lb_id          = aws_lb.lb.id
    lb_listner_arn = aws_lb_listener.front_end.id
  }
}
