resource "aws_lb_target_group" "app" {
  name        = "${var.vars.environment}-tg"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = var.vars.values.vpc.vpc_id
  target_type = "instance"

  health_check {
    interval            = 30
    path                = "/"
    port                = 80
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    protocol            = "HTTP"
    matcher             = "200,202"
  }
}
